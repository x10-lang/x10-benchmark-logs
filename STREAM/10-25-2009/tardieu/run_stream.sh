#!/bin/bash -x


PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 805306368 -procs 1 -hostfile hosts/block_32 2>&1 | tee -a block-log-1x1.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 402653184 -procs 2 -hostfile hosts/block_32 2>&1 | tee -a block-log-1x2.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 201326592 -procs 4 -hostfile hosts/block_32 2>&1 | tee -a block-log-1x4.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 100663296 -procs 8 -hostfile hosts/block_32 2>&1 | tee -a block-log-1x8.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 16 -hostfile hosts/block_32 2>&1 | tee -a block-log-1x16.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 32 -hostfile hosts/block_32 2>&1 | tee -a block-log-2x16.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 64 -hostfile hosts/block_32 2>&1 | tee -a block-log-4x16.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 128 -hostfile hosts/block_32 2>&1 | tee -a block-log-8x16.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 256 -hostfile hosts/block_32 2>&1 | tee -a block-log-16x16.out
PGASRT_CPUMAP=hosts/map_block_32 poe ./stream-opt 50331648 -procs 512 -hostfile hosts/block_32 2>&1 | tee -a block-log-32x16.out

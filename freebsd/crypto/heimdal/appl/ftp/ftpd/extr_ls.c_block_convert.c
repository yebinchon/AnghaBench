
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t S_BLKSIZE ;

__attribute__((used)) static size_t
block_convert(size_t blocks)
{



    return blocks * 512 / 1024;

}

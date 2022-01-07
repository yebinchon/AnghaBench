
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bcache_blksize ;
 size_t bcache_total_nblks ;

void
bcache_init(size_t nblks, size_t bsize)
{

    bcache_total_nblks = nblks;
    bcache_blksize = bsize;
}

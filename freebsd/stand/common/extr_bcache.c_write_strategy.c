
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache_devdata {int (* dv_strategy ) (int ,int,size_t,size_t,char*,size_t*) ;int dv_devdata; struct bcache* dv_cache; } ;
struct bcache {int dummy; } ;
typedef size_t daddr_t ;


 size_t bcache_blksize ;
 int bcache_invalidate (struct bcache*,size_t) ;
 int stub1 (int ,int,size_t,size_t,char*,size_t*) ;

__attribute__((used)) static int
write_strategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
    struct bcache_devdata *dd = (struct bcache_devdata *)devdata;
    struct bcache *bc = dd->dv_cache;
    daddr_t i, nblk;

    nblk = size / bcache_blksize;


    for (i = 0; i < nblk; i++) {
 bcache_invalidate(bc, blk + i);
    }


    return (dd->dv_strategy(dd->dv_devdata, rw, blk, size, buf, rsize));
}

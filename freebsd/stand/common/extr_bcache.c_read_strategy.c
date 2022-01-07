
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache_devdata {int (* dv_strategy ) (int ,int,scalar_t__,size_t,scalar_t__,size_t*) ;int dv_devdata; struct bcache* dv_cache; } ;
struct bcache {size_t ra; size_t bcache_nblks; scalar_t__ bcache_data; } ;
typedef scalar_t__ daddr_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ BCACHE_LOOKUP (struct bcache*,scalar_t__) ;
 size_t BCACHE_MINREADAHEAD ;
 int BCACHE_READAHEAD ;
 size_t BHASH (struct bcache*,scalar_t__) ;
 int ENODEV ;
 int F_MASK ;
 int F_NORA ;
 size_t MIN (size_t,size_t) ;
 size_t bcache_blksize ;
 int bcache_hits ;
 int bcache_insert (struct bcache*,scalar_t__) ;
 int bcache_invalidate (struct bcache*,scalar_t__) ;
 int bcache_misses ;
 size_t bcache_rablks ;
 int bcopy (scalar_t__,char*,size_t) ;
 int errno ;
 size_t rounddown (size_t,int) ;
 int stub1 (int ,int,scalar_t__,size_t,scalar_t__,size_t*) ;

__attribute__((used)) static int
read_strategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
    struct bcache_devdata *dd = (struct bcache_devdata *)devdata;
    struct bcache *bc = dd->dv_cache;
    size_t i, nblk, p_size, r_size, complete, ra;
    int result;
    daddr_t p_blk;
    caddr_t p_buf;

    if (bc == ((void*)0)) {
 errno = ENODEV;
 return (-1);
    }

    if (rsize != ((void*)0))
 *rsize = 0;

    nblk = size / bcache_blksize;
    if (nblk == 0 && size != 0)
 nblk++;
    result = 0;
    complete = 1;


    for (i = 0; i < nblk; i++) {
 if (BCACHE_LOOKUP(bc, (daddr_t)(blk + i))) {
     bcache_misses += (nblk - i);
     complete = 0;
     if (nblk - i > BCACHE_MINREADAHEAD && bc->ra > BCACHE_MINREADAHEAD)
  bc->ra >>= 1;
     break;
 } else {
     bcache_hits++;
 }
    }

   if (complete) {
 if (bc->ra < BCACHE_READAHEAD)
  bc->ra <<= 1;
 bcopy(bc->bcache_data + (bcache_blksize * BHASH(bc, blk)), buf, size);
 goto done;
   }






    p_blk = blk + i;
    p_buf = bc->bcache_data + (bcache_blksize * BHASH(bc, p_blk));
    r_size = bc->bcache_nblks - BHASH(bc, p_blk);

    p_size = MIN(r_size, nblk - i);
    if ((rw & F_NORA) == F_NORA)
 ra = 0;
    else
 ra = bc->bcache_nblks - BHASH(bc, p_blk + p_size);

    if (ra != 0 && ra != bc->bcache_nblks) {
 ra = MIN(bc->ra, ra - 1);
 ra = rounddown(ra, 16);
 p_size += ra;
    }


    for (i = 0; i < p_size; i++) {
 bcache_invalidate(bc, p_blk + i);
    }

    r_size = 0;
    rw &= F_MASK;
    result = dd->dv_strategy(dd->dv_devdata, rw, p_blk,
 p_size * bcache_blksize, p_buf, &r_size);

    r_size /= bcache_blksize;
    for (i = 0; i < r_size; i++)
 bcache_insert(bc, p_blk + i);


    if (r_size != 0) {
 if (r_size < p_size)
     bcache_rablks += (p_size - r_size);
 else
     bcache_rablks += ra;
    }


    for (i = 0; i < nblk; i++) {
 if (BCACHE_LOOKUP(bc, (daddr_t)(blk + i)))
     break;
    }

    if (size > i * bcache_blksize)
 size = i * bcache_blksize;

    if (size != 0) {
 bcopy(bc->bcache_data + (bcache_blksize * BHASH(bc, blk)), buf, size);
 result = 0;
    }

 done:
    if ((result == 0) && (rsize != ((void*)0)))
 *rsize = size;
    return(result);
}

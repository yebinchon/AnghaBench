
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bcache_devdata {int (* dv_strategy ) (int ,int,size_t,size_t,char*,size_t*) ;int dv_devdata; struct bcache* dv_cache; } ;
struct bcache {size_t bcache_nblks; } ;
typedef size_t daddr_t ;


 int BHASH (struct bcache*,size_t) ;
 int DPRINTF (char*,size_t,size_t) ;
 int F_MASK ;


 int MIN (int,int) ;
 size_t bcache_blksize ;
 int bcache_bypasses ;
 int bcache_ops ;
 int read_strategy (void*,int,size_t,size_t,char*,size_t*) ;
 int stub1 (int ,int,size_t,size_t,char*,size_t*) ;
 int write_strategy (void*,int const,size_t,size_t,char*,size_t*) ;

int
bcache_strategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
    struct bcache_devdata *dd = (struct bcache_devdata *)devdata;
    struct bcache *bc = dd->dv_cache;
    u_int bcache_nblks = 0;
    int nblk, cblk, ret;
    size_t csize, isize, total;

    bcache_ops++;

    if (bc != ((void*)0))
 bcache_nblks = bc->bcache_nblks;


    if (bc == ((void*)0) ||
 ((size * 2 / bcache_blksize) > bcache_nblks)) {
 DPRINTF("bypass %zu from %qu", size / bcache_blksize, blk);
 bcache_bypasses++;
 rw &= F_MASK;
 return (dd->dv_strategy(dd->dv_devdata, rw, blk, size, buf, rsize));
    }

    switch (rw & F_MASK) {
    case 129:
 nblk = size / bcache_blksize;
 if (size != 0 && nblk == 0)
     nblk++;

 ret = 0;
 total = 0;
 while(size) {
     cblk = bcache_nblks - BHASH(bc, blk);
     cblk = MIN(cblk, nblk);

     if (size <= bcache_blksize)
  csize = size;
     else
  csize = cblk * bcache_blksize;

     ret = read_strategy(devdata, rw, blk, csize, buf+total, &isize);





     if (ret != 0 || isize == 0) {
  if (total != 0)
      ret = 0;
  break;
     }
     blk += isize / bcache_blksize;
     total += isize;
     size -= isize;
     nblk = size / bcache_blksize;
 }

 if (rsize)
     *rsize = total;

 return (ret);
    case 128:
 return write_strategy(devdata, 128, blk, size, buf, rsize);
    }
    return -1;
}

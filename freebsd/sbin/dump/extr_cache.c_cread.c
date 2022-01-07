
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
typedef size_t off_t ;
struct TYPE_5__ {scalar_t__ fs_bsize; } ;
struct TYPE_4__ {size_t b_Offset; void* b_Data; struct TYPE_4__* b_HNext; } ;
typedef TYPE_1__ Block ;


 TYPE_1__** BlockHash ;
 int BlockSize ;
 int * DataBase ;
 size_t HSize ;
 int bcopy (void*,void*,size_t) ;
 scalar_t__ cachesize ;
 int cinit () ;
 size_t pread (int,void*,size_t,size_t) ;
 TYPE_2__* sblock ;

ssize_t
cread(int fd, void *buf, size_t nbytes, off_t offset)
{
 Block *blk;
 Block **pblk;
 Block **ppblk;
 int hi;
 int n;
 off_t mask;






 if (cachesize <= 0 || sblock->fs_bsize == 0)
  return(pread(fd, buf, nbytes, offset));
 if (DataBase == ((void*)0))
  cinit();







 mask = ~(off_t)(BlockSize - 1);
 if (nbytes >= BlockSize ||
     ((offset ^ (offset + nbytes - 1)) & mask) != 0) {
  return(pread(fd, buf, nbytes, offset));
 }






 hi = (offset / BlockSize) % HSize;
 pblk = &BlockHash[hi];
 ppblk = ((void*)0);
 while ((blk = *pblk) != ((void*)0)) {
  if (((blk->b_Offset ^ offset) & mask) == 0)
   break;
  ppblk = pblk;
  pblk = &blk->b_HNext;
 }
 if (blk == ((void*)0)) {
  blk = *ppblk;
  pblk = ppblk;
  blk->b_Offset = offset & mask;
  n = pread(fd, blk->b_Data, BlockSize, blk->b_Offset);
  if (n != BlockSize) {
   blk->b_Offset = (off_t)-1;
   blk = ((void*)0);
  }
 }
 if (blk) {
  bcopy(blk->b_Data + (offset - blk->b_Offset), buf, nbytes);
  *pblk = blk->b_HNext;
  blk->b_HNext = BlockHash[hi];
  BlockHash[hi] = blk;
  return(nbytes);
 } else {
  return(pread(fd, buf, nbytes, offset));
 }
}

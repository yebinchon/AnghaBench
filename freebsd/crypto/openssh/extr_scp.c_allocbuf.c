
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_blksize; } ;
struct TYPE_4__ {size_t cnt; int buf; } ;
typedef TYPE_1__ BUF ;


 size_t ROUNDUP (int ,int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int run_err (char*,int ) ;
 int strerror (int ) ;
 int xrecallocarray (int ,size_t,size_t,int) ;

BUF *
allocbuf(BUF *bp, int fd, int blksize)
{
 size_t size;
 size = blksize;

 if (bp->cnt >= size)
  return (bp);
 bp->buf = xrecallocarray(bp->buf, bp->cnt, size, 1);
 bp->cnt = size;
 return (bp);
}

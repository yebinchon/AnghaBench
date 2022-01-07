
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_pr {size_t size; size_t avail; int * buf; int * ptr; } ;


 int ENOMEM ;
 int * calloc (int,size_t) ;
 int memset (struct buf_pr*,int ,int) ;

int
bp_alloc(struct buf_pr *b, size_t size)
{
 memset(b, 0, sizeof(struct buf_pr));

 if ((b->buf = calloc(1, size)) == ((void*)0))
  return (ENOMEM);

 b->ptr = b->buf;
 b->size = size;
 b->avail = b->size;

 return (0);
}

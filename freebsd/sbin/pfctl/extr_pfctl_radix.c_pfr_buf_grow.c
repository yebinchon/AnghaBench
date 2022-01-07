
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {size_t pfrb_type; int pfrb_msize; int * pfrb_caddr; } ;
typedef int * caddr_t ;


 int EINVAL ;
 int ENOMEM ;
 size_t PFRB_MAX ;
 size_t SIZE_T_MAX ;
 size_t* buf_esize ;
 int bzero (int *,int) ;
 int * calloc (size_t,int) ;
 int errno ;
 int * realloc (int *,int) ;

int
pfr_buf_grow(struct pfr_buffer *b, int minsize)
{
 caddr_t p;
 size_t bs;

 if (b == ((void*)0) || b->pfrb_type <= 0 || b->pfrb_type >= PFRB_MAX) {
  errno = EINVAL;
  return (-1);
 }
 if (minsize != 0 && minsize <= b->pfrb_msize)
  return (0);
 bs = buf_esize[b->pfrb_type];
 if (!b->pfrb_msize) {
  if (minsize < 64)
   minsize = 64;
  b->pfrb_caddr = calloc(bs, minsize);
  if (b->pfrb_caddr == ((void*)0))
   return (-1);
  b->pfrb_msize = minsize;
 } else {
  if (minsize == 0)
   minsize = b->pfrb_msize * 2;
  if (minsize < 0 || minsize >= SIZE_T_MAX / bs) {

   errno = ENOMEM;
   return (-1);
  }
  p = realloc(b->pfrb_caddr, minsize * bs);
  if (p == ((void*)0))
   return (-1);
  bzero(p + b->pfrb_msize * bs, (minsize - b->pfrb_msize) * bs);
  b->pfrb_caddr = p;
  b->pfrb_msize = minsize;
 }
 return (0);
}

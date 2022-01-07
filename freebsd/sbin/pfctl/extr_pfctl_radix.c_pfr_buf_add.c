
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {size_t pfrb_type; size_t pfrb_size; size_t pfrb_msize; scalar_t__ pfrb_caddr; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 size_t PFRB_MAX ;
 size_t* buf_esize ;
 int errno ;
 int memcpy (scalar_t__,void const*,size_t) ;
 scalar_t__ pfr_buf_grow (struct pfr_buffer*,int ) ;

int
pfr_buf_add(struct pfr_buffer *b, const void *e)
{
 size_t bs;

 if (b == ((void*)0) || b->pfrb_type <= 0 || b->pfrb_type >= PFRB_MAX ||
     e == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 bs = buf_esize[b->pfrb_type];
 if (b->pfrb_size == b->pfrb_msize)
  if (pfr_buf_grow(b, 0))
   return (-1);
 memcpy(((caddr_t)b->pfrb_caddr) + bs * b->pfrb_size, e, bs);
 b->pfrb_size++;
 return (0);
}

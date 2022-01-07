
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {size_t pfrb_type; int pfrb_size; void* pfrb_caddr; } ;
typedef size_t caddr_t ;


 size_t PFRB_MAX ;
 size_t* buf_esize ;

void *
pfr_buf_next(struct pfr_buffer *b, const void *prev)
{
 size_t bs;

 if (b == ((void*)0) || b->pfrb_type <= 0 || b->pfrb_type >= PFRB_MAX)
  return (((void*)0));
 if (b->pfrb_size == 0)
  return (((void*)0));
 if (prev == ((void*)0))
  return (b->pfrb_caddr);
 bs = buf_esize[b->pfrb_type];
 if ((((caddr_t)prev)-((caddr_t)b->pfrb_caddr)) / bs >= b->pfrb_size-1)
  return (((void*)0));
 return (((caddr_t)prev) + bs);
}

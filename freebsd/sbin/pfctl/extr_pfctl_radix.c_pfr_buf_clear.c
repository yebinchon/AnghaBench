
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {scalar_t__ pfrb_msize; scalar_t__ pfrb_size; int * pfrb_caddr; } ;


 int free (int *) ;

void
pfr_buf_clear(struct pfr_buffer *b)
{
 if (b == ((void*)0))
  return;
 if (b->pfrb_caddr != ((void*)0))
  free(b->pfrb_caddr);
 b->pfrb_caddr = ((void*)0);
 b->pfrb_size = b->pfrb_msize = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regional {scalar_t__ next; } ;
struct alloc_cache {scalar_t__ num_reg_blocks; struct regional* reg_list; scalar_t__ num_quar; int * quar; TYPE_1__* super; int lock; } ;
typedef int alloc_special_type ;
struct TYPE_2__ {int lock; int num_quar; int * quar; } ;


 int alloc_clear_special_list (struct alloc_cache*) ;
 int alloc_set_special_next (int *,int *) ;
 int * alloc_special_next (int *) ;
 int free (struct regional*) ;
 int lock_quick_destroy (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

void
alloc_clear(struct alloc_cache* alloc)
{
 alloc_special_type* p;
 struct regional* r, *nr;
 if(!alloc)
  return;
 if(!alloc->super) {
  lock_quick_destroy(&alloc->lock);
 }
 if(alloc->super && alloc->quar) {

  p = alloc->quar;
  while(alloc_special_next(p))
   p = alloc_special_next(p);
  lock_quick_lock(&alloc->super->lock);
  alloc_set_special_next(p, alloc->super->quar);
  alloc->super->quar = alloc->quar;
  alloc->super->num_quar += alloc->num_quar;
  lock_quick_unlock(&alloc->super->lock);
 } else {
  alloc_clear_special_list(alloc);
 }
 alloc->quar = 0;
 alloc->num_quar = 0;
 r = alloc->reg_list;
 while(r) {
  nr = (struct regional*)r->next;
  free(r);
  r = nr;
 }
 alloc->reg_list = ((void*)0);
 alloc->num_reg_blocks = 0;
}

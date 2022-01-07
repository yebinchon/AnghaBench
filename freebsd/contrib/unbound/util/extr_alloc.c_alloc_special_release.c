
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {scalar_t__ num_quar; int lock; scalar_t__ super; int * quar; } ;
typedef int alloc_special_type ;


 scalar_t__ ALLOC_SPECIAL_MAX ;
 int alloc_set_special_next (int *,int *) ;
 int alloc_special_clean (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_assert (struct alloc_cache*) ;
 int pushintosuper (struct alloc_cache*,int *) ;

void
alloc_special_release(struct alloc_cache* alloc, alloc_special_type* mem)
{
 log_assert(alloc);
 if(!mem)
  return;
 if(!alloc->super) {
  lock_quick_lock(&alloc->lock);
 }

 alloc_special_clean(mem);
 if(alloc->super && alloc->num_quar >= ALLOC_SPECIAL_MAX) {

  pushintosuper(alloc, mem);
  return;
 }

 alloc_set_special_next(mem, alloc->quar);
 alloc->quar = mem;
 alloc->num_quar++;
 if(!alloc->super) {
  lock_quick_unlock(&alloc->lock);
 }
}

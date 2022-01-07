
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {int lock; int super; scalar_t__ num_quar; scalar_t__ quar; } ;


 int alloc_clear_special_list (struct alloc_cache*) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

void
alloc_clear_special(struct alloc_cache* alloc)
{
 if(!alloc->super) {
  lock_quick_lock(&alloc->lock);
 }
 alloc_clear_special_list(alloc);
 alloc->quar = 0;
 alloc->num_quar = 0;
 if(!alloc->super) {
  lock_quick_unlock(&alloc->lock);
 }
}

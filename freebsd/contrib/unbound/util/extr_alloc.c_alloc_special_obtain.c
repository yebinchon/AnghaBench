
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct alloc_cache {TYPE_1__* super; int num_quar; TYPE_2__* quar; } ;
struct TYPE_7__ {void* id; } ;
typedef TYPE_2__ alloc_special_type ;
struct TYPE_6__ {int lock; int num_quar; TYPE_2__* quar; } ;


 void* alloc_get_id (struct alloc_cache*) ;
 int alloc_setup_special (TYPE_2__*) ;
 void* alloc_special_next (TYPE_2__*) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_assert (struct alloc_cache*) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int prealloc_setup (struct alloc_cache*) ;

alloc_special_type*
alloc_special_obtain(struct alloc_cache* alloc)
{
 alloc_special_type* p;
 log_assert(alloc);

 if(alloc->quar) {
  p = alloc->quar;
  alloc->quar = alloc_special_next(p);
  alloc->num_quar--;
  p->id = alloc_get_id(alloc);
  return p;
 }

 if(alloc->super) {


  lock_quick_lock(&alloc->super->lock);
  if((p = alloc->super->quar)) {
   alloc->super->quar = alloc_special_next(p);
   alloc->super->num_quar--;
  }
  lock_quick_unlock(&alloc->super->lock);
  if(p) {
   p->id = alloc_get_id(alloc);
   return p;
  }
 }

 prealloc_setup(alloc);
 if(!(p = (alloc_special_type*)malloc(sizeof(alloc_special_type)))) {
  log_err("alloc_special_obtain: out of memory");
  return ((void*)0);
 }
 alloc_setup_special(p);
 p->id = alloc_get_id(alloc);
 return p;
}

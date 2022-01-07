
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct alloc_cache {int num_quar; size_t num_reg_blocks; int lock; int super; TYPE_2__* quar; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {TYPE_1__ entry; } ;
typedef TYPE_2__ alloc_special_type ;


 size_t ALLOC_REG_SIZE ;
 TYPE_2__* alloc_special_next (TYPE_2__*) ;
 scalar_t__ lock_get_mem (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

size_t alloc_get_mem(struct alloc_cache* alloc)
{
 alloc_special_type* p;
 size_t s = sizeof(*alloc);
 if(!alloc->super) {
  lock_quick_lock(&alloc->lock);
 }
 s += sizeof(alloc_special_type) * alloc->num_quar;
 for(p = alloc->quar; p; p = alloc_special_next(p)) {
  s += lock_get_mem(&p->entry.lock);
 }
 s += alloc->num_reg_blocks * ALLOC_REG_SIZE;
 if(!alloc->super) {
  lock_quick_unlock(&alloc->lock);
 }
 return s;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alloc_cache {int num_quar; TYPE_1__* super; int * quar; } ;
typedef int alloc_special_type ;
struct TYPE_2__ {int num_quar; int lock; int * quar; } ;


 int ALLOC_SPECIAL_MAX ;
 int alloc_set_special_next (int *,int *) ;
 void* alloc_special_next (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_assert (int) ;

__attribute__((used)) static void
pushintosuper(struct alloc_cache* alloc, alloc_special_type* mem)
{
 int i;
 alloc_special_type *p = alloc->quar;
 log_assert(p);
 log_assert(alloc && alloc->super &&
  alloc->num_quar >= ALLOC_SPECIAL_MAX);

 alloc_set_special_next(mem, alloc->quar);
 for(i=1; i<ALLOC_SPECIAL_MAX/2; i++) {
  p = alloc_special_next(p);
 }
 alloc->quar = alloc_special_next(p);
 alloc->num_quar -= ALLOC_SPECIAL_MAX/2;


 lock_quick_lock(&alloc->super->lock);
 alloc_set_special_next(p, alloc->super->quar);
 alloc->super->quar = mem;
 alloc->super->num_quar += ALLOC_SPECIAL_MAX/2 + 1;
 lock_quick_unlock(&alloc->super->lock);

}

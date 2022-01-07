
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct alloc_cache {TYPE_2__* quar; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef TYPE_2__ alloc_special_type ;


 TYPE_2__* alloc_special_next (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int lock_rw_destroy (int *) ;

__attribute__((used)) static void
alloc_clear_special_list(struct alloc_cache* alloc)
{
 alloc_special_type* p, *np;

 p = alloc->quar;
 while(p) {
  np = alloc_special_next(p);

  lock_rw_destroy(&p->entry.lock);
  free(p);
  p = np;
 }
}

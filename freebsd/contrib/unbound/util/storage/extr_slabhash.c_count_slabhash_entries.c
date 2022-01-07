
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slabhash {size_t size; TYPE_1__** array; } ;
struct TYPE_2__ {int lock; scalar_t__ num; } ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

size_t count_slabhash_entries(struct slabhash* sh)
{
 size_t slab, cnt = 0;

 for(slab=0; slab<sh->size; slab++) {
  lock_quick_lock(&sh->array[slab]->lock);
  cnt += sh->array[slab]->num;
  lock_quick_unlock(&sh->array[slab]->lock);
 }
 return cnt;
}

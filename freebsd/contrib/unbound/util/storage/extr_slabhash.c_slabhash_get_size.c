
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slabhash {size_t size; TYPE_1__** array; } ;
struct TYPE_2__ {int lock; scalar_t__ space_max; } ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

size_t slabhash_get_size(struct slabhash* sl)
{
 size_t i, total = 0;
 for(i=0; i<sl->size; i++) {
  lock_quick_lock(&sl->array[i]->lock);
  total += sl->array[i]->space_max;
  lock_quick_unlock(&sl->array[i]->lock);
 }
 return total;
}

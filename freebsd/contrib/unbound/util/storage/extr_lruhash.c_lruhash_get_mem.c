
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lruhash_bin {int dummy; } ;
struct lruhash {int space_used; size_t size; int lock; TYPE_1__* array; } ;
struct TYPE_2__ {int lock; } ;


 size_t lock_get_mem (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

size_t
lruhash_get_mem(struct lruhash* table)
{
 size_t s;
 lock_quick_lock(&table->lock);
 s = sizeof(struct lruhash) + table->space_used;
 if(table->size != 0)
  s += (table->size)*(sizeof(struct lruhash_bin) +
   lock_get_mem(&table->array[0].lock));

 lock_quick_unlock(&table->lock);
 s += lock_get_mem(&table->lock);
 return s;
}

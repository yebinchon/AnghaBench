
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lruhash_entry {int hash; struct lruhash_entry* overflow_next; } ;
struct lruhash_bin {int lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {int size_mask; size_t size; TYPE_1__* array; } ;
struct TYPE_2__ {int lock; struct lruhash_entry* overflow_list; } ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

void
bin_split(struct lruhash* table, struct lruhash_bin* newa,
 int newmask)
{
 size_t i;
 struct lruhash_entry *p, *np;
 struct lruhash_bin* newbin;




 int newbit = newmask - table->size_mask;



 for(i=0; i<table->size; i++)
 {
  lock_quick_lock(&table->array[i].lock);
  p = table->array[i].overflow_list;

  lock_quick_lock(&newa[i].lock);
  lock_quick_lock(&newa[newbit|i].lock);
  while(p) {
   np = p->overflow_next;

   newbin = &newa[p->hash & newmask];
   p->overflow_next = newbin->overflow_list;
   newbin->overflow_list = p;
   p=np;
  }
  lock_quick_unlock(&newa[i].lock);
  lock_quick_unlock(&newa[newbit|i].lock);
  lock_quick_unlock(&table->array[i].lock);
 }
}

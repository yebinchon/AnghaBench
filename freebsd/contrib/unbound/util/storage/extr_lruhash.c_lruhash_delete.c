
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash {size_t size; struct lruhash* array; int lock; } ;


 int bin_delete (struct lruhash*,struct lruhash*) ;
 int free (struct lruhash*) ;
 int lock_quick_destroy (int *) ;

void
lruhash_delete(struct lruhash* table)
{
 size_t i;
 if(!table)
  return;

 lock_quick_destroy(&table->lock);
 for(i=0; i<table->size; i++)
  bin_delete(table, &table->array[i]);
 free(table->array);
 free(table);
}

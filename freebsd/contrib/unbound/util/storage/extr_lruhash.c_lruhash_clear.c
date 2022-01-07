
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash {size_t size; int lock; scalar_t__ space_used; scalar_t__ num; int * lru_end; int * lru_start; int * array; int markdelfunc; int deldatafunc; int delkeyfunc; } ;


 int bin_clear (struct lruhash*,int *) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_hash_deldatafunc (int ) ;
 int fptr_whitelist_hash_delkeyfunc (int ) ;
 int fptr_whitelist_hash_markdelfunc (int ) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

void
lruhash_clear(struct lruhash* table)
{
 size_t i;
 if(!table)
  return;
 fptr_ok(fptr_whitelist_hash_delkeyfunc(table->delkeyfunc));
 fptr_ok(fptr_whitelist_hash_deldatafunc(table->deldatafunc));
 fptr_ok(fptr_whitelist_hash_markdelfunc(table->markdelfunc));

 lock_quick_lock(&table->lock);
 for(i=0; i<table->size; i++) {
  bin_clear(table, &table->array[i]);
 }
 table->lru_start = ((void*)0);
 table->lru_end = ((void*)0);
 table->num = 0;
 table->space_used = 0;
 lock_quick_unlock(&table->lock);
}

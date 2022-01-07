
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {int key; void* data; int lock; } ;
struct lruhash_bin {int lock; } ;
struct lruhash {size_t size_mask; int cb_arg; int (* deldatafunc ) (void*,int ) ;int (* delkeyfunc ) (int ,int ) ;int (* markdelfunc ) (int ) ;int lock; scalar_t__ (* sizefunc ) (int ,void*) ;int space_used; int num; struct lruhash_bin* array; int compfunc; } ;
typedef size_t hashvalue_type ;


 struct lruhash_entry* bin_find_entry (struct lruhash*,struct lruhash_bin*,size_t,void*) ;
 int bin_overflow_remove (struct lruhash_bin*,struct lruhash_entry*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_hash_compfunc (int ) ;
 int fptr_whitelist_hash_deldatafunc (int (*) (void*,int )) ;
 int fptr_whitelist_hash_delkeyfunc (int (*) (int ,int )) ;
 int fptr_whitelist_hash_markdelfunc (int (*) (int )) ;
 int fptr_whitelist_hash_sizefunc (scalar_t__ (*) (int ,void*)) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int lru_remove (struct lruhash*,struct lruhash_entry*) ;
 scalar_t__ stub1 (int ,void*) ;
 int stub2 (int ) ;
 int stub3 (int ,int ) ;
 int stub4 (void*,int ) ;

void
lruhash_remove(struct lruhash* table, hashvalue_type hash, void* key)
{
 struct lruhash_entry* entry;
 struct lruhash_bin* bin;
 void *d;
 fptr_ok(fptr_whitelist_hash_sizefunc(table->sizefunc));
 fptr_ok(fptr_whitelist_hash_delkeyfunc(table->delkeyfunc));
 fptr_ok(fptr_whitelist_hash_deldatafunc(table->deldatafunc));
 fptr_ok(fptr_whitelist_hash_compfunc(table->compfunc));
 fptr_ok(fptr_whitelist_hash_markdelfunc(table->markdelfunc));

 lock_quick_lock(&table->lock);
 bin = &table->array[hash & table->size_mask];
 lock_quick_lock(&bin->lock);
 if((entry=bin_find_entry(table, bin, hash, key))) {
  bin_overflow_remove(bin, entry);
  lru_remove(table, entry);
 } else {
  lock_quick_unlock(&table->lock);
  lock_quick_unlock(&bin->lock);
  return;
 }
 table->num--;
 table->space_used -= (*table->sizefunc)(entry->key, entry->data);
 lock_quick_unlock(&table->lock);
 lock_rw_wrlock(&entry->lock);
 if(table->markdelfunc)
  (*table->markdelfunc)(entry->key);
 lock_rw_unlock(&entry->lock);
 lock_quick_unlock(&bin->lock);

 d = entry->data;
 (*table->delkeyfunc)(entry->key, table->cb_arg);
 (*table->deldatafunc)(d, table->cb_arg);
}

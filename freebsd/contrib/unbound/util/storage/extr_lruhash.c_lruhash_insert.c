
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {void* data; int key; struct lruhash_entry* overflow_next; int lock; } ;
struct lruhash_bin {int lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {size_t (* sizefunc ) (int ,void*) ;size_t size_mask; scalar_t__ num; size_t space_used; scalar_t__ space_max; scalar_t__ size; int (* deldatafunc ) (void*,void*) ;int (* delkeyfunc ) (int ,void*) ;int lock; struct lruhash_bin* array; void* cb_arg; int markdelfunc; int compfunc; } ;
typedef size_t hashvalue_type ;


 struct lruhash_entry* bin_find_entry (struct lruhash*,struct lruhash_bin*,size_t,int ) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_hash_compfunc (int ) ;
 int fptr_whitelist_hash_deldatafunc (int (*) (void*,void*)) ;
 int fptr_whitelist_hash_delkeyfunc (int (*) (int ,void*)) ;
 int fptr_whitelist_hash_markdelfunc (int ) ;
 int fptr_whitelist_hash_sizefunc (size_t (*) (int ,void*)) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int lru_front (struct lruhash*,struct lruhash_entry*) ;
 int lru_touch (struct lruhash*,struct lruhash_entry*) ;
 int reclaim_space (struct lruhash*,struct lruhash_entry**) ;
 size_t stub1 (int ,void*) ;
 size_t stub2 (int ,void*) ;
 int stub3 (int ,void*) ;
 int stub4 (void*,void*) ;
 int stub5 (int ,void*) ;
 int stub6 (void*,void*) ;
 int table_grow (struct lruhash*) ;

void
lruhash_insert(struct lruhash* table, hashvalue_type hash,
        struct lruhash_entry* entry, void* data, void* cb_arg)
{
 struct lruhash_bin* bin;
 struct lruhash_entry* found, *reclaimlist=((void*)0);
 size_t need_size;
 fptr_ok(fptr_whitelist_hash_sizefunc(table->sizefunc));
 fptr_ok(fptr_whitelist_hash_delkeyfunc(table->delkeyfunc));
 fptr_ok(fptr_whitelist_hash_deldatafunc(table->deldatafunc));
 fptr_ok(fptr_whitelist_hash_compfunc(table->compfunc));
 fptr_ok(fptr_whitelist_hash_markdelfunc(table->markdelfunc));
 need_size = table->sizefunc(entry->key, data);
 if(cb_arg == ((void*)0)) cb_arg = table->cb_arg;


 lock_quick_lock(&table->lock);
 bin = &table->array[hash & table->size_mask];
 lock_quick_lock(&bin->lock);


 if(!(found=bin_find_entry(table, bin, hash, entry->key))) {

  entry->overflow_next = bin->overflow_list;
  bin->overflow_list = entry;
  lru_front(table, entry);
  table->num++;
  table->space_used += need_size;
 } else {

  table->space_used += need_size -
   (*table->sizefunc)(found->key, found->data);
  (*table->delkeyfunc)(entry->key, cb_arg);
  lru_touch(table, found);
  lock_rw_wrlock(&found->lock);
  (*table->deldatafunc)(found->data, cb_arg);
  found->data = data;
  lock_rw_unlock(&found->lock);
 }
 lock_quick_unlock(&bin->lock);
 if(table->space_used > table->space_max)
  reclaim_space(table, &reclaimlist);
 if(table->num >= table->size)
  table_grow(table);
 lock_quick_unlock(&table->lock);


 while(reclaimlist) {
  struct lruhash_entry* n = reclaimlist->overflow_next;
  void* d = reclaimlist->data;
  (*table->delkeyfunc)(reclaimlist->key, cb_arg);
  (*table->deldatafunc)(d, cb_arg);
  reclaimlist = n;
 }
}

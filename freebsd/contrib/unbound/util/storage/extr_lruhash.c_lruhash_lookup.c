
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {int lock; } ;
struct lruhash_bin {int lock; } ;
struct lruhash {size_t size_mask; int lock; struct lruhash_bin* array; int compfunc; } ;
typedef size_t hashvalue_type ;


 struct lruhash_entry* bin_find_entry (struct lruhash*,struct lruhash_bin*,size_t,void*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_hash_compfunc (int ) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int lru_touch (struct lruhash*,struct lruhash_entry*) ;

struct lruhash_entry*
lruhash_lookup(struct lruhash* table, hashvalue_type hash, void* key, int wr)
{
 struct lruhash_entry* entry;
 struct lruhash_bin* bin;
 fptr_ok(fptr_whitelist_hash_compfunc(table->compfunc));

 lock_quick_lock(&table->lock);
 bin = &table->array[hash & table->size_mask];
 lock_quick_lock(&bin->lock);
 if((entry=bin_find_entry(table, bin, hash, key)))
  lru_touch(table, entry);
 lock_quick_unlock(&table->lock);

 if(entry) {
  if(wr) { lock_rw_wrlock(&entry->lock); }
  else { lock_rw_rdlock(&entry->lock); }
 }
 lock_quick_unlock(&bin->lock);
 return entry;
}

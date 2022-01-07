
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; int lock; } ;
struct ub_packed_rrset_key {scalar_t__ id; TYPE_1__ entry; } ;
struct rrset_cache {int table; } ;
struct lruhash {int lock; } ;
typedef scalar_t__ rrset_id_type ;
typedef scalar_t__ hashvalue_type ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lru_touch (struct lruhash*,TYPE_1__*) ;
 struct lruhash* slabhash_gettable (int *,scalar_t__) ;

void
rrset_cache_touch(struct rrset_cache* r, struct ub_packed_rrset_key* key,
        hashvalue_type hash, rrset_id_type id)
{
 struct lruhash* table = slabhash_gettable(&r->table, hash);
 lock_quick_lock(&table->lock);






 lock_rw_rdlock(&key->entry.lock);
 if(key->id == id && key->entry.hash == hash) {
  lru_touch(table, &key->entry);
 }
 lock_rw_unlock(&key->entry.lock);
 lock_quick_unlock(&table->lock);
}

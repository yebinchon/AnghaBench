
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct TYPE_4__ {scalar_t__ data; int hash; } ;
struct TYPE_3__ {int * dname; int type; } ;
struct ub_packed_rrset_key {scalar_t__ id; TYPE_2__ entry; TYPE_1__ rk; } ;
struct rrset_ref {scalar_t__ id; struct ub_packed_rrset_key* key; } ;
struct rrset_cache {int table; } ;
struct packed_rrset_data {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; scalar_t__ key; } ;
struct alloc_cache {int dummy; } ;
typedef int hashvalue_type ;


 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int lock_rw_unlock (int *) ;
 int log_assert (int) ;
 int need_to_update_rrset (scalar_t__,scalar_t__,int ,int,int) ;
 scalar_t__ ntohs (int ) ;
 int rrset_update_id (struct rrset_ref*,struct alloc_cache*) ;
 int rrsetdata_equal (struct packed_rrset_data*,struct packed_rrset_data*) ;
 int slabhash_insert (int *,int ,TYPE_2__*,scalar_t__,struct alloc_cache*) ;
 struct lruhash_entry* slabhash_lookup (int *,int ,struct ub_packed_rrset_key*,int ) ;
 int ub_packed_rrset_parsedelete (struct ub_packed_rrset_key*,struct alloc_cache*) ;

int
rrset_cache_update(struct rrset_cache* r, struct rrset_ref* ref,
 struct alloc_cache* alloc, time_t timenow)
{
 struct lruhash_entry* e;
 struct ub_packed_rrset_key* k = ref->key;
 hashvalue_type h = k->entry.hash;
 uint16_t rrset_type = ntohs(k->rk.type);
 int equal = 0;
 log_assert(ref->id != 0 && k->id != 0);
 log_assert(k->rk.dname != ((void*)0));

 if((e=slabhash_lookup(&r->table, h, k, 0)) != 0) {







  ref->key = (struct ub_packed_rrset_key*)e->key;
  ref->id = ref->key->id;
  equal = rrsetdata_equal((struct packed_rrset_data*)k->entry.
   data, (struct packed_rrset_data*)e->data);
  if(!need_to_update_rrset(k->entry.data, e->data, timenow,
   equal, (rrset_type==LDNS_RR_TYPE_NS))) {

   lock_rw_unlock(&e->lock);
   ub_packed_rrset_parsedelete(k, alloc);
   if(equal) return 2;
   return 1;
  }
  lock_rw_unlock(&e->lock);







 }
 log_assert(ref->key->id != 0);
 slabhash_insert(&r->table, h, &k->entry, k->entry.data, alloc);
 if(e) {



  if((rrset_type == LDNS_RR_TYPE_NSEC
   || rrset_type == LDNS_RR_TYPE_NSEC3
   || rrset_type == LDNS_RR_TYPE_DNAME) && !equal) {
   rrset_update_id(ref, alloc);
  }
  return 1;
 }
 return 0;
}

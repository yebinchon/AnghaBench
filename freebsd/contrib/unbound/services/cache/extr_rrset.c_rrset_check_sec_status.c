
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int hash; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; int rk; } ;
struct rrset_cache {int table; } ;
struct packed_rrset_data {scalar_t__ ttl; scalar_t__ security; size_t count; size_t rrsig_count; scalar_t__* rr_ttl; scalar_t__ trust; } ;
struct lruhash_entry {int lock; scalar_t__ data; } ;


 int lock_rw_unlock (int *) ;
 int rrset_key_hash (int *) ;
 int rrsetdata_equal (struct packed_rrset_data*,struct packed_rrset_data*) ;
 scalar_t__ sec_status_bogus ;
 struct lruhash_entry* slabhash_lookup (int *,int ,struct ub_packed_rrset_key*,int ) ;

void
rrset_check_sec_status(struct rrset_cache* r,
 struct ub_packed_rrset_key* rrset, time_t now)
{
 struct packed_rrset_data* updata =
  (struct packed_rrset_data*)rrset->entry.data;
 struct lruhash_entry* e;
 struct packed_rrset_data* cachedata;


 rrset->entry.hash = rrset_key_hash(&rrset->rk);

 e = slabhash_lookup(&r->table, rrset->entry.hash, rrset, 0);
 if(!e)
  return;
 cachedata = (struct packed_rrset_data*)e->data;
 if(now > cachedata->ttl || !rrsetdata_equal(updata, cachedata)) {
  lock_rw_unlock(&e->lock);
  return;
 }
 if(cachedata->security > updata->security) {
  updata->security = cachedata->security;
  if(cachedata->security == sec_status_bogus) {
   size_t i;
   updata->ttl = cachedata->ttl - now;
   for(i=0; i<cachedata->count+cachedata->rrsig_count; i++)
    if(cachedata->rr_ttl[i] < now)
     updata->rr_ttl[i] = 0;
    else updata->rr_ttl[i] =
     cachedata->rr_ttl[i]-now;
  }
  if(cachedata->trust > updata->trust)
   updata->trust = cachedata->trust;
 }
 lock_rw_unlock(&e->lock);
}

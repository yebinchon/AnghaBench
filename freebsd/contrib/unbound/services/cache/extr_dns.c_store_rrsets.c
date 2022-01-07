
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int type; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; int id; TYPE_1__ rk; } ;
struct reply_info {size_t rrset_count; TYPE_3__* ref; struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct module_env {int alloc; int rrset_cache; } ;
struct TYPE_6__ {struct ub_packed_rrset_key* key; int id; } ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 scalar_t__ ntohs (int ) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,scalar_t__) ;
 int rrset_cache_update (int ,TYPE_3__*,int ,scalar_t__) ;

__attribute__((used)) static void
store_rrsets(struct module_env* env, struct reply_info* rep, time_t now,
 time_t leeway, int pside, struct reply_info* qrep,
 struct regional* region)
{
        size_t i;

        for(i=0; i<rep->rrset_count; i++) {
                rep->ref[i].key = rep->rrsets[i];
                rep->ref[i].id = rep->rrsets[i]->id;

  switch(rrset_cache_update(env->rrset_cache, &rep->ref[i],
                        env->alloc, now + ((ntohs(rep->ref[i].key->rk.type)==
   LDNS_RR_TYPE_NS && !pside)?0:leeway))) {
  case 0:
   break;
  case 2:
   if(region) {
    struct ub_packed_rrset_key* ck;
    lock_rw_rdlock(&rep->ref[i].key->entry.lock);

    if(rep->ref[i].key->id == 0)
     ck = ((void*)0);
    else ck = packed_rrset_copy_region(
     rep->ref[i].key, region, now);
    lock_rw_unlock(&rep->ref[i].key->entry.lock);
    if(ck) {

     qrep->rrsets[i] = ck;
    }
   }




  case 1:
                        rep->rrsets[i] = rep->ref[i].key;
  }
        }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ time_t ;
struct reply_info {scalar_t__ ttl; size_t rrset_count; TYPE_2__** rrsets; TYPE_1__* ref; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct msgreply_entry {int entry; } ;
struct module_env {int alloc; int msg_cache; int * now; } ;
typedef int hashvalue_type ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int id; TYPE_2__* key; } ;


 int DNSCACHE_STORE_ZEROTTL ;
 int VERB_ALGO ;
 int free (struct reply_info*) ;
 int log_err (char*) ;
 int msg_del_servfail (struct module_env*,struct query_info*,int) ;
 struct msgreply_entry* query_info_entrysetup (struct query_info*,struct reply_info*,int ) ;
 int reply_info_set_ttls (struct reply_info*,int ) ;
 int reply_info_sortref (struct reply_info*) ;
 int slabhash_insert (int ,int ,int *,struct reply_info*,int ) ;
 int store_rrsets (struct module_env*,struct reply_info*,int ,scalar_t__,int,struct reply_info*,struct regional*) ;
 int verbose (int ,char*) ;

void
dns_cache_store_msg(struct module_env* env, struct query_info* qinfo,
 hashvalue_type hash, struct reply_info* rep, time_t leeway, int pside,
 struct reply_info* qrep, uint32_t flags, struct regional* region)
{
 struct msgreply_entry* e;
 time_t ttl = rep->ttl;
 size_t i;


        for(i=0; i<rep->rrset_count; i++) {
  rep->ref[i].key = rep->rrsets[i];
  rep->ref[i].id = rep->rrsets[i]->id;
 }



 reply_info_set_ttls(rep, *env->now);
 store_rrsets(env, rep, *env->now, leeway, pside, qrep, region);
 if(ttl == 0 && !(flags & DNSCACHE_STORE_ZEROTTL)) {


  verbose(VERB_ALGO, "TTL 0: dropped msg from cache");
  free(rep);





  msg_del_servfail(env, qinfo, flags);
  return;
 }


 reply_info_sortref(rep);
 if(!(e = query_info_entrysetup(qinfo, rep, hash))) {
  log_err("store_msg: malloc failed");
  return;
 }
 slabhash_insert(env->msg_cache, hash, &e->entry, rep, env->alloc);
}

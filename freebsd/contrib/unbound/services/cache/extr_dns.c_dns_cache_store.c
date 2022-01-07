
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct rrset_ref {TYPE_3__* key; int id; } ;
struct reply_info {size_t rrset_count; int flags; TYPE_3__** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {struct reply_info* qname; int qname_len; } ;
struct packed_rrset_data {int dummy; } ;
struct module_env {int alloc; scalar_t__* now; int rrset_cache; } ;
typedef int hashvalue_type ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ rk; int id; TYPE_1__ entry; } ;


 int BIT_AA ;
 int BIT_CD ;
 int BIT_QR ;
 int BIT_RA ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int dns_cache_store_msg (struct module_env*,struct query_info*,int ,struct reply_info*,scalar_t__,int,struct reply_info*,scalar_t__,struct regional*) ;
 int free (struct reply_info*) ;
 struct reply_info* memdup (struct reply_info*,int ) ;
 scalar_t__ ntohs (int ) ;
 int packed_rrset_ttl_add (struct packed_rrset_data*,scalar_t__) ;
 int query_info_hash (struct query_info*,int ) ;
 struct reply_info* reply_info_copy (struct reply_info*,int ,int *) ;
 int reply_info_parsedelete (struct reply_info*,int ) ;
 int rrset_cache_update (int ,struct rrset_ref*,int ,scalar_t__) ;

int
dns_cache_store(struct module_env* env, struct query_info* msgqinf,
        struct reply_info* msgrep, int is_referral, time_t leeway, int pside,
 struct regional* region, uint32_t flags)
{
 struct reply_info* rep = ((void*)0);

 rep = reply_info_copy(msgrep, env->alloc, ((void*)0));
 if(!rep)
  return 0;




 if(is_referral) {

  struct rrset_ref ref;
  size_t i;
  for(i=0; i<rep->rrset_count; i++) {
   packed_rrset_ttl_add((struct packed_rrset_data*)
    rep->rrsets[i]->entry.data, *env->now);
   ref.key = rep->rrsets[i];
   ref.id = rep->rrsets[i]->id;


   (void)rrset_cache_update(env->rrset_cache, &ref,
    env->alloc, *env->now +
    ((ntohs(ref.key->rk.type)==LDNS_RR_TYPE_NS
     && !pside) ? 0:leeway));
  }
  free(rep);
  return 1;
 } else {

  struct query_info qinf;
  hashvalue_type h;

  qinf = *msgqinf;
  qinf.qname = memdup(msgqinf->qname, msgqinf->qname_len);
  if(!qinf.qname) {
   reply_info_parsedelete(rep, env->alloc);
   return 0;
  }



  rep->flags |= (BIT_RA | BIT_QR);
  rep->flags &= ~(BIT_AA | BIT_CD);
  h = query_info_hash(&qinf, (uint16_t)flags);
  dns_cache_store_msg(env, &qinf, h, rep, leeway, pside, msgrep,
   flags, region);


  free(qinf.qname);
 }
 return 1;
}

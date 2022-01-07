
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct packed_rrset_data {int dummy; } ;
typedef struct packed_rrset_data uint8_t ;
struct TYPE_5__ {void* data; int hash; } ;
struct TYPE_4__ {scalar_t__ type; size_t dname_len; struct packed_rrset_data* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int id; } ;
struct reply_info {size_t an_numrrsets; size_t rrset_count; struct reply_info* rep; struct ub_packed_rrset_key** rrsets; int security; int ar_numrrsets; int ns_numrrsets; int serve_expired_ttl; int prefetch_ttl; int ttl; int qdcount; int flags; int qinfo; } ;
struct module_qstate {struct reply_info* return_msg; struct reply_info* region; TYPE_3__* env; int qinfo; } ;
struct dns_msg {size_t an_numrrsets; size_t rrset_count; struct dns_msg* rep; struct ub_packed_rrset_key** rrsets; int security; int ar_numrrsets; int ns_numrrsets; int serve_expired_ttl; int prefetch_ttl; int ttl; int qdcount; int flags; int qinfo; } ;
struct dns64_env {int dummy; } ;
struct TYPE_6__ {int rrset_cache; scalar_t__* modinfo; } ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int VERB_ALGO ;
 struct reply_info* construct_reply_info_base (struct reply_info*,int ,int ,int ,int ,int ,size_t,int ,int ,size_t,int ) ;
 int dns64_synth_aaaa_data (struct ub_packed_rrset_key*,struct packed_rrset_data*,struct ub_packed_rrset_key*,struct packed_rrset_data**,struct reply_info*,struct dns64_env*) ;
 scalar_t__ htons (int ) ;
 int log_assert (struct reply_info*) ;
 int memset (struct reply_info*,int ,int) ;
 int msg_cache_remove (TYPE_3__*,struct packed_rrset_data*,size_t,int ,int ,int ) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 size_t packed_rrset_sizeof (struct packed_rrset_data*) ;
 scalar_t__ regional_alloc (struct reply_info*,int) ;
 scalar_t__ regional_alloc_init (struct reply_info*,struct packed_rrset_data*,size_t) ;
 int reply_info_alloc_rrset_keys (struct reply_info*,int *,struct reply_info*) ;
 int rrset_cache_remove (int ,struct packed_rrset_data*,size_t,int ,int ,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
dns64_adjust_a(int id, struct module_qstate* super, struct module_qstate* qstate)
{
 struct dns64_env* dns64_env = (struct dns64_env*)super->env->modinfo[id];
 struct reply_info *rep, *cp;
 size_t i, s;
 struct packed_rrset_data* fd, *dd;
 struct ub_packed_rrset_key* fk, *dk;

 verbose(VERB_ALGO, "converting A answers to AAAA answers");

 log_assert(super->region);
 log_assert(qstate->return_msg);
 log_assert(qstate->return_msg->rep);


 if(!super->return_msg) {
  super->return_msg = (struct dns_msg*)regional_alloc(
      super->region, sizeof(struct dns_msg));
  if(!super->return_msg)
   return;
  memset(super->return_msg, 0, sizeof(*super->return_msg));
  super->return_msg->qinfo = super->qinfo;
 }

 rep = qstate->return_msg->rep;




 cp = construct_reply_info_base(super->region, rep->flags, rep->qdcount,
  rep->ttl, rep->prefetch_ttl, rep->serve_expired_ttl,
  rep->an_numrrsets, rep->ns_numrrsets, rep->ar_numrrsets,
  rep->rrset_count, rep->security);
 if(!cp)
  return;


 if(!reply_info_alloc_rrset_keys(cp, ((void*)0), super->region)) {
  return;
 }


 for(i=0; i<cp->rrset_count; i++) {
  fk = rep->rrsets[i];
  dk = cp->rrsets[i];
  fd = (struct packed_rrset_data*)fk->entry.data;
  dk->rk = fk->rk;
  dk->id = fk->id;

  if(i<rep->an_numrrsets && fk->rk.type == htons(LDNS_RR_TYPE_A)) {

   dns64_synth_aaaa_data(fk, fd, dk, &dd, super->region, dns64_env);
   if(!dd)
    return;


   rrset_cache_remove(super->env->rrset_cache, dk->rk.dname,
        dk->rk.dname_len, LDNS_RR_TYPE_AAAA,
        LDNS_RR_CLASS_IN, 0);


   if(i != 0)
       msg_cache_remove(super->env, dk->rk.dname,
    dk->rk.dname_len, LDNS_RR_TYPE_AAAA,
    LDNS_RR_CLASS_IN, 0);
  } else {
   dk->entry.hash = fk->entry.hash;
   dk->rk.dname = (uint8_t*)regional_alloc_init(super->region,
    fk->rk.dname, fk->rk.dname_len);

   if(!dk->rk.dname)
    return;

   s = packed_rrset_sizeof(fd);
   dd = (struct packed_rrset_data*)regional_alloc_init(
    super->region, fd, s);

   if(!dd)
    return;
  }

  packed_rrset_ptr_fixup(dd);
  dk->entry.data = (void*)dd;
 }


 super->return_msg->rep = cp;
}

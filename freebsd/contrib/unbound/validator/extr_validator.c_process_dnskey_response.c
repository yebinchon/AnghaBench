
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_qstate {scalar_t__ restart_count; struct key_entry_key* key_entry; int * chain_blacklist; void* state; int ds_rrset; } ;
struct val_env {int kcache; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct sock_list {int dummy; } ;
struct query_info {int qname; int qclass; int qname_len; } ;
struct module_qstate {int * errinf; int region; TYPE_2__* env; } ;
struct key_entry_key {int dummy; } ;
struct dns_msg {int rep; } ;
struct TYPE_4__ {TYPE_1__* cfg; int * now; scalar_t__* modinfo; } ;
struct TYPE_3__ {int harden_algo_downgrade; } ;


 int BOGUS_KEY_TTL ;
 int LDNS_RCODE_NOERROR ;
 scalar_t__ VAL_MAX_RESTART_COUNT ;
 void* VAL_VALIDATE_STATE ;
 int VERB_DETAIL ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int ) ;
 int errinf_origin (struct module_qstate*,struct sock_list*) ;
 int key_cache_insert (int ,struct key_entry_key*,struct module_qstate*) ;
 struct key_entry_key* key_entry_create_bad (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ key_entry_isbad (struct key_entry_key*) ;
 int key_entry_isgood (struct key_entry_key*) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,struct query_info*) ;
 struct ub_packed_rrset_key* reply_find_answer_rrset (struct query_info*,int ) ;
 int val_blacklist (int **,int ,struct sock_list*,int) ;
 struct key_entry_key* val_verify_new_DNSKEYs (int ,TYPE_2__*,struct val_env*,struct ub_packed_rrset_key*,int ,int,char**,struct module_qstate*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
process_dnskey_response(struct module_qstate* qstate, struct val_qstate* vq,
 int id, int rcode, struct dns_msg* msg, struct query_info* qinfo,
 struct sock_list* origin)
{
 struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];
 struct key_entry_key* old = vq->key_entry;
 struct ub_packed_rrset_key* dnskey = ((void*)0);
 int downprot;
 char* reason = ((void*)0);

 if(rcode == LDNS_RCODE_NOERROR)
  dnskey = reply_find_answer_rrset(qinfo, msg->rep);

 if(dnskey == ((void*)0)) {

  verbose(VERB_DETAIL, "Missing DNSKEY RRset in response to "
   "DNSKEY query.");
  if(vq->restart_count < VAL_MAX_RESTART_COUNT) {
   val_blacklist(&vq->chain_blacklist, qstate->region,
    origin, 1);
   qstate->errinf = ((void*)0);
   vq->restart_count++;
   return;
  }
  vq->key_entry = key_entry_create_bad(qstate->region,
   qinfo->qname, qinfo->qname_len, qinfo->qclass,
   BOGUS_KEY_TTL, *qstate->env->now);
  if(!vq->key_entry) {
   log_err("alloc failure in missing dnskey response");

  }
  errinf(qstate, "No DNSKEY record");
  errinf_origin(qstate, origin);
  errinf_dname(qstate, "for key", qinfo->qname);
  vq->state = VAL_VALIDATE_STATE;
  return;
 }
 if(!vq->ds_rrset) {
  log_err("internal error: no DS rrset for new DNSKEY response");
  vq->key_entry = ((void*)0);
  vq->state = VAL_VALIDATE_STATE;
  return;
 }
 downprot = qstate->env->cfg->harden_algo_downgrade;
 vq->key_entry = val_verify_new_DNSKEYs(qstate->region, qstate->env,
  ve, dnskey, vq->ds_rrset, downprot, &reason, qstate);

 if(!vq->key_entry) {
  log_err("out of memory in verify new DNSKEYs");
  vq->state = VAL_VALIDATE_STATE;
  return;
 }


 if(!key_entry_isgood(vq->key_entry)) {
  if(key_entry_isbad(vq->key_entry)) {
   if(vq->restart_count < VAL_MAX_RESTART_COUNT) {
    val_blacklist(&vq->chain_blacklist,
     qstate->region, origin, 1);
    qstate->errinf = ((void*)0);
    vq->restart_count++;
    vq->key_entry = old;
    return;
   }
   verbose(VERB_DETAIL, "Did not match a DS to a DNSKEY, "
    "thus bogus.");
   errinf(qstate, reason);
   errinf_origin(qstate, origin);
   errinf_dname(qstate, "for key", qinfo->qname);
  }
  vq->chain_blacklist = ((void*)0);
  vq->state = VAL_VALIDATE_STATE;
  return;
 }
 vq->chain_blacklist = ((void*)0);
 qstate->errinf = ((void*)0);


 key_cache_insert(ve->kcache, vq->key_entry, qstate);


 log_query_info(VERB_DETAIL, "validated DNSKEY", qinfo);
}

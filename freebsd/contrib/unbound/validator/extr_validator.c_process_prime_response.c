
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qclass; } ;
struct val_qstate {scalar_t__ restart_count; void* state; int * key_entry; int * chain_blacklist; int * trust_anchor_name; TYPE_1__ qchase; int trust_anchor_len; int trust_anchor_labs; } ;
struct val_env {int kcache; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int name; int lock; scalar_t__ autr; int dclass; int namelen; } ;
struct sock_list {int dummy; } ;
struct module_qstate {int * errinf; int region; TYPE_2__* env; } ;
struct dns_msg {int rep; } ;
struct TYPE_4__ {int anchors; scalar_t__* modinfo; } ;


 int LDNS_RCODE_NOERROR ;
 int LDNS_RR_TYPE_DNSKEY ;
 void* VAL_INIT_STATE ;
 scalar_t__ VAL_MAX_RESTART_COUNT ;
 void* VAL_VALIDATE_STATE ;
 struct trust_anchor* anchor_find (int ,int *,int ,int ,int ) ;
 int autr_process_prime (TYPE_2__*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,struct module_qstate*) ;
 int errinf_dname (struct module_qstate*,char*,int ) ;
 int errinf_origin (struct module_qstate*,struct sock_list*) ;
 int key_cache_insert (int ,int *,struct module_qstate*) ;
 scalar_t__ key_entry_isbad (int *) ;
 scalar_t__ key_entry_isnull (int *) ;
 int lock_basic_unlock (int *) ;
 int * primeResponseToKE (struct ub_packed_rrset_key*,struct trust_anchor*,struct module_qstate*,int) ;
 struct ub_packed_rrset_key* reply_find_rrset_section_an (int ,int ,int ,int ,int ) ;
 int val_blacklist (int **,int ,struct sock_list*,int) ;

__attribute__((used)) static void
process_prime_response(struct module_qstate* qstate, struct val_qstate* vq,
 int id, int rcode, struct dns_msg* msg, struct sock_list* origin)
{
 struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];
 struct ub_packed_rrset_key* dnskey_rrset = ((void*)0);
 struct trust_anchor* ta = anchor_find(qstate->env->anchors,
  vq->trust_anchor_name, vq->trust_anchor_labs,
  vq->trust_anchor_len, vq->qchase.qclass);
 if(!ta) {

  vq->state = VAL_INIT_STATE;
  if(!vq->trust_anchor_name)
   vq->state = VAL_VALIDATE_STATE;
  vq->trust_anchor_name = ((void*)0);
  return;
 }


 if(rcode == LDNS_RCODE_NOERROR) {
  dnskey_rrset = reply_find_rrset_section_an(msg->rep,
   ta->name, ta->namelen, LDNS_RR_TYPE_DNSKEY,
   ta->dclass);
 }

 if(ta->autr) {
  if(!autr_process_prime(qstate->env, ve, ta, dnskey_rrset,
   qstate)) {

   vq->state = VAL_INIT_STATE;
   vq->trust_anchor_name = ((void*)0);
   return;
  }
 }
 vq->key_entry = primeResponseToKE(dnskey_rrset, ta, qstate, id);
 lock_basic_unlock(&ta->lock);
 if(vq->key_entry) {
  if(key_entry_isbad(vq->key_entry)
   && vq->restart_count < VAL_MAX_RESTART_COUNT) {
   val_blacklist(&vq->chain_blacklist, qstate->region,
    origin, 1);
   qstate->errinf = ((void*)0);
   vq->restart_count++;
   vq->key_entry = ((void*)0);
   vq->state = VAL_INIT_STATE;
   return;
  }
  vq->chain_blacklist = ((void*)0);
  errinf_origin(qstate, origin);
  errinf_dname(qstate, "for trust anchor", ta->name);

  key_cache_insert(ve->kcache, vq->key_entry, qstate);
 }


 if(!vq->key_entry || key_entry_isnull(vq->key_entry) ||
  key_entry_isbad(vq->key_entry)) {
  vq->state = VAL_VALIDATE_STATE;
 }

}

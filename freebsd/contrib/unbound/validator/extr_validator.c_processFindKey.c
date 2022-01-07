
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {size_t qname_len; int qclass; int * qname; } ;
struct val_qstate {size_t signer_len; TYPE_4__ qchase; TYPE_3__* ds_rrset; TYPE_5__* key_entry; int chain_blacklist; void* state; TYPE_1__* chase_reply; int * empty_DS_name; int * signer_name; } ;
struct module_qstate {int region; int env; int blacklist; int reply_origin; } ;
struct dns_msg {int qinfo; } ;
struct TYPE_11__ {int * name; } ;
struct TYPE_8__ {size_t dname_len; int * dname; } ;
struct TYPE_9__ {TYPE_2__ rk; } ;
struct TYPE_7__ {void* security; } ;


 int BIT_CD ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_DS ;
 void* VAL_FINISHED_STATE ;
 void* VAL_VALIDATE_STATE ;
 int VERB_ALGO ;
 int dname_count_labels (int *) ;
 int dname_remove_labels (int **,size_t*,int) ;
 int dname_subdomain_c (int *,int *) ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_origin (struct module_qstate*,int ) ;
 int generate_request (struct module_qstate*,int,int *,size_t,int ,int ,int ,struct module_qstate**,int ) ;
 int key_entry_isbad (TYPE_5__*) ;
 scalar_t__ key_entry_isnull (TYPE_5__*) ;
 int log_assert (int) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;
 int log_query_info (int ,char*,TYPE_4__*) ;
 int process_ds_response (struct module_qstate*,struct val_qstate*,int,int ,struct dns_msg*,int *,int *) ;
 scalar_t__ query_dname_compare (int *,int *) ;
 void* sec_status_bogus ;
 int val_error (struct module_qstate*,int) ;
 struct dns_msg* val_find_DS (int ,int *,size_t,int ,int ,int *) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static int
processFindKey(struct module_qstate* qstate, struct val_qstate* vq, int id)
{
 uint8_t* target_key_name, *current_key_name;
 size_t target_key_len;
 int strip_lab;
 struct module_qstate* newq = ((void*)0);

 log_query_info(VERB_ALGO, "validator: FindKey", &vq->qchase);






 log_assert(vq->key_entry && !key_entry_isbad(vq->key_entry));
 if(key_entry_isnull(vq->key_entry)) {
  if(!generate_request(qstate, id, vq->ds_rrset->rk.dname,
   vq->ds_rrset->rk.dname_len, LDNS_RR_TYPE_DNSKEY,
   vq->qchase.qclass, BIT_CD, &newq, 0)) {
   verbose(VERB_ALGO, "error generating DNSKEY request");
   return val_error(qstate, id);
  }
  return 0;
 }

 target_key_name = vq->signer_name;
 target_key_len = vq->signer_len;
 if(!target_key_name) {
  target_key_name = vq->qchase.qname;
  target_key_len = vq->qchase.qname_len;
 }

 current_key_name = vq->key_entry->name;


 if(query_dname_compare(target_key_name, current_key_name) == 0) {
  vq->state = VAL_VALIDATE_STATE;
  return 1;
 }

 if(vq->empty_DS_name) {



  if(query_dname_compare(target_key_name,
   vq->empty_DS_name) == 0) {

   verbose(VERB_ALGO, "Cannot retrieve DS for signature");
   errinf(qstate, "no signatures");
   errinf_origin(qstate, qstate->reply_origin);
   vq->chase_reply->security = sec_status_bogus;
   vq->state = VAL_FINISHED_STATE;
   return 1;
  }
  current_key_name = vq->empty_DS_name;
 }

 log_nametypeclass(VERB_ALGO, "current keyname", current_key_name,
  LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN);
 log_nametypeclass(VERB_ALGO, "target keyname", target_key_name,
  LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN);

 if(!dname_subdomain_c(target_key_name, current_key_name)) {
  verbose(VERB_ALGO, "bad signer name");
  vq->chase_reply->security = sec_status_bogus;
  vq->state = VAL_FINISHED_STATE;
  return 1;
 }

 strip_lab = dname_count_labels(target_key_name) -
  dname_count_labels(current_key_name) - 1;
 log_assert(strip_lab >= -1);
 verbose(VERB_ALGO, "striplab %d", strip_lab);
 if(strip_lab > 0) {
  dname_remove_labels(&target_key_name, &target_key_len,
   strip_lab);
 }
 log_nametypeclass(VERB_ALGO, "next keyname", target_key_name,
  LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN);



 if(vq->ds_rrset)
  log_nametypeclass(VERB_ALGO, "DS RRset", vq->ds_rrset->rk.dname, LDNS_RR_TYPE_DS, LDNS_RR_CLASS_IN);
 else verbose(VERB_ALGO, "No DS RRset");

 if(vq->ds_rrset && query_dname_compare(vq->ds_rrset->rk.dname,
  vq->key_entry->name) != 0) {
  if(!generate_request(qstate, id, vq->ds_rrset->rk.dname,
   vq->ds_rrset->rk.dname_len, LDNS_RR_TYPE_DNSKEY,
   vq->qchase.qclass, BIT_CD, &newq, 0)) {
   verbose(VERB_ALGO, "error generating DNSKEY request");
   return val_error(qstate, id);
  }
  return 0;
 }

 if(!vq->ds_rrset || query_dname_compare(vq->ds_rrset->rk.dname,
  target_key_name) != 0) {
  struct dns_msg* msg;
  if(!qstate->blacklist && !vq->chain_blacklist &&
   (msg=val_find_DS(qstate->env, target_key_name,
   target_key_len, vq->qchase.qclass, qstate->region,
   vq->key_entry->name)) ) {
   verbose(VERB_ALGO, "Process cached DS response");
   process_ds_response(qstate, vq, id, LDNS_RCODE_NOERROR,
    msg, &msg->qinfo, ((void*)0));
   return 1;
  }
  if(!generate_request(qstate, id, target_key_name,
   target_key_len, LDNS_RR_TYPE_DS, vq->qchase.qclass,
   BIT_CD, &newq, 0)) {
   verbose(VERB_ALGO, "error generating DS request");
   return val_error(qstate, id);
  }
  return 0;
 }


 if(!generate_request(qstate, id, vq->ds_rrset->rk.dname,
  vq->ds_rrset->rk.dname_len, LDNS_RR_TYPE_DNSKEY,
  vq->qchase.qclass, BIT_CD, &newq, 0)) {
  verbose(VERB_ALGO, "error generating DNSKEY request");
  return val_error(qstate, id);
 }

 return 0;
}

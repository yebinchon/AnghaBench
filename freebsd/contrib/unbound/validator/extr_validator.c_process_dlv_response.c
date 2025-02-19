
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int dname; int rrset_class; int type; } ;
struct TYPE_20__ {TYPE_1__ rk; } ;
typedef TYPE_7__ uint8_t ;
struct val_qstate {void* dlv_status; int dlv_lookup_name; int dlv_lookup_name_len; struct ub_packed_rrset_key* ds_rrset; } ;
struct val_env {int neg_cache; } ;
struct TYPE_16__ {TYPE_7__* data; struct ub_packed_rrset_key* key; } ;
struct TYPE_15__ {int dname_len; TYPE_7__* dname; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct query_info {scalar_t__ qclass; } ;
struct module_qstate {TYPE_6__* env; int region; } ;
struct dns_msg {TYPE_8__* rep; } ;
struct TYPE_21__ {scalar_t__ security; int an_numrrsets; TYPE_7__** rrsets; int flags; } ;
struct TYPE_19__ {TYPE_5__* anchors; scalar_t__* modinfo; } ;
struct TYPE_18__ {TYPE_4__* dlv_anchor; } ;
struct TYPE_17__ {int name; } ;


 int FLAGS_GET_RCODE (int ) ;
 int LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_TYPE_DLV ;
 int VERB_ALGO ;
 void* dlv_ask_higher ;
 void* dlv_error ;
 void* dlv_success ;
 void* dlv_there_is_no_dlv ;
 int dname_subdomain_c (int ,int ) ;
 int log_err (char*) ;
 scalar_t__ ntohs (int ) ;
 int packed_rrset_ptr_fixup (TYPE_7__*) ;
 int packed_rrset_sizeof (TYPE_7__*) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 TYPE_7__* regional_alloc_init (int ,TYPE_7__*,int) ;
 scalar_t__ sec_status_secure ;
 int sec_status_to_string (scalar_t__) ;
 int val_neg_addreply (int ,TYPE_8__*) ;
 int val_nsec_check_dlv (struct query_info*,TYPE_8__*,int *,int *) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static void
process_dlv_response(struct module_qstate* qstate, struct val_qstate* vq,
 int id, int rcode, struct dns_msg* msg, struct query_info* qinfo)
{
 struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];

 verbose(VERB_ALGO, "process dlv response to super");
 if(rcode != LDNS_RCODE_NOERROR) {

  vq->dlv_status = dlv_error;
  verbose(VERB_ALGO, "response is error");
  return;
 }
 if(msg->rep->security != sec_status_secure) {
  vq->dlv_status = dlv_error;
  verbose(VERB_ALGO, "response is not secure, %s",
   sec_status_to_string(msg->rep->security));
  return;
 }

 if(FLAGS_GET_RCODE(msg->rep->flags) == LDNS_RCODE_NOERROR &&
  msg->rep->an_numrrsets == 1 &&
  msg->rep->security == sec_status_secure &&
  ntohs(msg->rep->rrsets[0]->rk.type) == LDNS_RR_TYPE_DLV &&
  ntohs(msg->rep->rrsets[0]->rk.rrset_class) == qinfo->qclass &&
  query_dname_compare(msg->rep->rrsets[0]->rk.dname,
   vq->dlv_lookup_name) == 0) {

  vq->ds_rrset = (struct ub_packed_rrset_key*)
   regional_alloc_init(qstate->region,
   msg->rep->rrsets[0], sizeof(*vq->ds_rrset));
  if(!vq->ds_rrset) {
   log_err("out of memory in process_dlv");
   return;
  }
  vq->ds_rrset->entry.key = vq->ds_rrset;
  vq->ds_rrset->rk.dname = (uint8_t*)regional_alloc_init(
   qstate->region, vq->ds_rrset->rk.dname,
   vq->ds_rrset->rk.dname_len);
  if(!vq->ds_rrset->rk.dname) {
   log_err("out of memory in process_dlv");
   vq->dlv_status = dlv_error;
   return;
  }
  vq->ds_rrset->entry.data = regional_alloc_init(qstate->region,
   vq->ds_rrset->entry.data,
   packed_rrset_sizeof(vq->ds_rrset->entry.data));
  if(!vq->ds_rrset->entry.data) {
   log_err("out of memory in process_dlv");
   vq->dlv_status = dlv_error;
   return;
  }
  packed_rrset_ptr_fixup(vq->ds_rrset->entry.data);

  vq->dlv_status = dlv_success;
  return;
 }

 val_neg_addreply(ve->neg_cache, msg->rep);






 if(!val_nsec_check_dlv(qinfo, msg->rep, &vq->dlv_lookup_name,
  &vq->dlv_lookup_name_len)) {
  vq->dlv_status = dlv_error;
  verbose(VERB_ALGO, "nsec error");
  return;
 }
 if(!dname_subdomain_c(vq->dlv_lookup_name,
  qstate->env->anchors->dlv_anchor->name)) {
  vq->dlv_status = dlv_there_is_no_dlv;
  return;
 }
 vq->dlv_status = dlv_ask_higher;
}

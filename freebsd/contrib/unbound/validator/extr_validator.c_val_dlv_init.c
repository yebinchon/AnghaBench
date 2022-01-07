
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {size_t qname_len; scalar_t__ qtype; int qclass; int * qname; } ;
struct val_qstate {size_t dlv_lookup_name_len; size_t dlv_insecure_at_len; size_t signer_len; TYPE_3__ qchase; int * dlv_lookup_name; int state; int * dlv_insecure_at; TYPE_5__* key_entry; int * signer_name; TYPE_4__* dlv_checked; } ;
struct val_env {int neg_cache; } ;
struct module_qstate {TYPE_2__* env; int region; } ;
struct TYPE_10__ {size_t namelen; int * name; } ;
struct TYPE_9__ {size_t namelen; int * name; } ;
struct TYPE_7__ {TYPE_1__* anchors; int * now; int rrset_cache; } ;
struct TYPE_6__ {TYPE_4__* dlv_anchor; } ;


 scalar_t__ LDNS_RR_TYPE_DLV ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int VAL_DLVLOOKUP_STATE ;
 int VERB_ALGO ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int generate_request (struct module_qstate*,int,int *,size_t,scalar_t__,int ,int ,struct module_qstate**,int ) ;
 scalar_t__ key_entry_isnull (TYPE_5__*) ;
 int log_assert (TYPE_4__*) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int *,scalar_t__,int ) ;
 int memmove (int *,int *,size_t) ;
 void* regional_alloc (int ,size_t) ;
 int val_error (struct module_qstate*,int) ;
 scalar_t__ val_neg_dlvlookup (int ,int *,size_t,int ,int ,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
val_dlv_init(struct module_qstate* qstate, struct val_qstate* vq,
 struct val_env* ve, int id)
{
 uint8_t* nm;
 size_t nm_len;
 struct module_qstate* newq = ((void*)0);

 log_assert(qstate->env->anchors->dlv_anchor);

 log_assert(vq->dlv_checked);


 vq->dlv_lookup_name = ((void*)0);
 vq->dlv_lookup_name_len = 0;
 vq->dlv_insecure_at = ((void*)0);
 vq->dlv_insecure_at_len = 0;





 if(vq->signer_name) {
  nm = vq->signer_name;
  nm_len = vq->signer_len;
 } else {

  nm = vq->qchase.qname;
  nm_len = vq->qchase.qname_len;
  if(vq->qchase.qtype == LDNS_RR_TYPE_DS)
   dname_remove_label(&nm, &nm_len);
 }
 log_nametypeclass(VERB_ALGO, "DLV init look", nm, LDNS_RR_TYPE_DS,
  vq->qchase.qclass);
 log_assert(nm && nm_len);


 if(dname_subdomain_c(nm, qstate->env->anchors->dlv_anchor->name)) {
  verbose(VERB_ALGO, "DLV lookup within DLV repository denied");
  return 1;
 }

 vq->dlv_lookup_name_len = nm_len - 1 +
  qstate->env->anchors->dlv_anchor->namelen;
 vq->dlv_lookup_name = regional_alloc(qstate->region,
  vq->dlv_lookup_name_len);
 if(!vq->dlv_lookup_name) {
  log_err("Out of memory preparing DLV lookup");
  return val_error(qstate, id);
 }
 memmove(vq->dlv_lookup_name, nm, nm_len-1);
 memmove(vq->dlv_lookup_name+nm_len-1,
  qstate->env->anchors->dlv_anchor->name,
  qstate->env->anchors->dlv_anchor->namelen);
 log_nametypeclass(VERB_ALGO, "DLV name", vq->dlv_lookup_name,
  LDNS_RR_TYPE_DLV, vq->qchase.qclass);




 nm = ((void*)0);
 if(vq->key_entry && key_entry_isnull(vq->key_entry)) {
  nm = vq->key_entry->name;
  nm_len = vq->key_entry->namelen;
 }
 if(nm) {
  vq->dlv_insecure_at_len = nm_len - 1 +
   qstate->env->anchors->dlv_anchor->namelen;
  vq->dlv_insecure_at = regional_alloc(qstate->region,
   vq->dlv_insecure_at_len);
  if(!vq->dlv_insecure_at) {
   log_err("Out of memory preparing DLV lookup");
   return val_error(qstate, id);
  }
  memmove(vq->dlv_insecure_at, nm, nm_len-1);
  memmove(vq->dlv_insecure_at+nm_len-1,
   qstate->env->anchors->dlv_anchor->name,
   qstate->env->anchors->dlv_anchor->namelen);
  log_nametypeclass(VERB_ALGO, "insecure_at",
   vq->dlv_insecure_at, 0, vq->qchase.qclass);
 }



 while(val_neg_dlvlookup(ve->neg_cache, vq->dlv_lookup_name,
  vq->dlv_lookup_name_len, vq->qchase.qclass,
  qstate->env->rrset_cache, *qstate->env->now)) {

  dname_remove_label(&vq->dlv_lookup_name,
   &vq->dlv_lookup_name_len);

  if(!dname_subdomain_c(vq->dlv_lookup_name,
   qstate->env->anchors->dlv_anchor->name)) {
   verbose(VERB_ALGO, "ask above dlv repo");
   return 1;
  }

  if(vq->dlv_insecure_at && !dname_subdomain_c(
   vq->dlv_lookup_name, vq->dlv_insecure_at)) {
   verbose(VERB_ALGO, "ask above insecure endpoint");
   return 1;
  }
 }


 vq->state = VAL_DLVLOOKUP_STATE;
 if(!generate_request(qstate, id, vq->dlv_lookup_name,
  vq->dlv_lookup_name_len, LDNS_RR_TYPE_DLV,
  vq->qchase.qclass, 0, &newq, 0)) {
  return val_error(qstate, id);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;
typedef struct TYPE_21__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_28__ {size_t qname_len; scalar_t__ qtype; scalar_t__ qclass; int * qname; } ;
struct val_qstate {scalar_t__ rrset_skip; scalar_t__ restart_count; size_t signer_len; int dlv_checked; void* state; TYPE_4__* chase_reply; TYPE_17__* key_entry; TYPE_8__ qchase; int * signer_name; TYPE_3__* orig_msg; scalar_t__ ds_rrset; int * empty_DS_name; } ;
struct val_env {int kcache; } ;
struct trust_anchor {scalar_t__ numDS; scalar_t__ numDNSKEY; int lock; int * name; } ;
struct TYPE_21__ {scalar_t__ qtype; int qname; } ;
struct module_qstate {TYPE_5__* env; int region; TYPE_12__ qinfo; int query_flags; } ;
typedef enum val_classification { ____Placeholder_val_classification } val_classification ;
struct TYPE_29__ {scalar_t__ rrset_count; TYPE_2__** rrsets; } ;
struct TYPE_27__ {int rrset_cache; int * now; int anchors; } ;
struct TYPE_26__ {void* security; } ;
struct TYPE_25__ {TYPE_9__* rep; } ;
struct TYPE_23__ {size_t dname_len; int flags; int type; int rrset_class; int * dname; } ;
struct TYPE_24__ {TYPE_1__ rk; } ;
struct TYPE_22__ {int * name; } ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int PACKED_RRSET_NSEC_AT_APEX ;
 int VAL_CLASS_CNAME ;
 int VAL_CLASS_NAMEERROR ;
 int VAL_CLASS_POSITIVE ;
 int VAL_CLASS_REFERRAL ;
 void* VAL_FINDKEY_STATE ;
 void* VAL_FINISHED_STATE ;
 scalar_t__ VAL_MAX_RESTART_COUNT ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_DETAIL ;
 scalar_t__ VERB_QUERY ;
 struct trust_anchor* anchors_lookup (int ,int *,size_t,scalar_t__) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_strict_subdomain_c (int *,int *) ;
 int dname_subdomain_c (int *,int *) ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int *) ;
 TYPE_17__* key_cache_obtain (int ,int *,size_t,scalar_t__,int ,int ) ;
 char* key_entry_get_reason (TYPE_17__*) ;
 scalar_t__ key_entry_isbad (TYPE_17__*) ;
 scalar_t__ key_entry_isnull (TYPE_17__*) ;
 int lock_basic_unlock (int *) ;
 int log_dns_msg (char*,TYPE_8__*,TYPE_4__*) ;
 int log_nametypeclass (scalar_t__,char*,int *,int ,int ) ;
 scalar_t__ ntohs (int ) ;
 int prime_trust_anchor (struct module_qstate*,struct val_qstate*,int,struct trust_anchor*) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 void* sec_status_bogus ;
 void* sec_status_indeterminate ;
 void* sec_status_insecure ;
 int val_classification_to_string (int) ;
 int val_classify_response (int ,TYPE_12__*,TYPE_8__*,TYPE_9__*,scalar_t__) ;
 int val_error (struct module_qstate*,int) ;
 int val_fill_reply (TYPE_4__*,TYPE_9__*,scalar_t__,int *,size_t,int *) ;
 int val_find_signer (int,TYPE_8__*,TYPE_9__*,size_t,int **,size_t*) ;
 int val_mark_indeterminate (TYPE_4__*,int ,int ,TYPE_5__*) ;
 int val_mark_insecure (TYPE_4__*,int *,int ,TYPE_5__*) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
processInit(struct module_qstate* qstate, struct val_qstate* vq,
 struct val_env* ve, int id)
{
 uint8_t* lookup_name;
 size_t lookup_len;
 struct trust_anchor* anchor;
 enum val_classification subtype = val_classify_response(
  qstate->query_flags, &qstate->qinfo, &vq->qchase,
  vq->orig_msg->rep, vq->rrset_skip);
 if(vq->restart_count > VAL_MAX_RESTART_COUNT) {
  verbose(VERB_ALGO, "restart count exceeded");
  return val_error(qstate, id);
 }
 verbose(VERB_ALGO, "validator classification %s",
  val_classification_to_string(subtype));
 if(subtype == VAL_CLASS_REFERRAL &&
  vq->rrset_skip < vq->orig_msg->rep->rrset_count) {


  vq->qchase.qname = vq->orig_msg->rep->
   rrsets[vq->rrset_skip]->rk.dname;
  vq->qchase.qname_len = vq->orig_msg->rep->
   rrsets[vq->rrset_skip]->rk.dname_len;
  vq->qchase.qtype = ntohs(vq->orig_msg->rep->
   rrsets[vq->rrset_skip]->rk.type);
  vq->qchase.qclass = ntohs(vq->orig_msg->rep->
   rrsets[vq->rrset_skip]->rk.rrset_class);
 }
 lookup_name = vq->qchase.qname;
 lookup_len = vq->qchase.qname_len;


 if(vq->qchase.qtype == LDNS_RR_TYPE_DS ||
  (vq->qchase.qtype == LDNS_RR_TYPE_NSEC &&
   vq->orig_msg->rep->rrset_count > vq->rrset_skip &&
   ntohs(vq->orig_msg->rep->rrsets[vq->rrset_skip]->rk.type) ==
   LDNS_RR_TYPE_NSEC &&
   !(vq->orig_msg->rep->rrsets[vq->rrset_skip]->
   rk.flags&PACKED_RRSET_NSEC_AT_APEX))) {
  dname_remove_label(&lookup_name, &lookup_len);
 }

 val_mark_indeterminate(vq->chase_reply, qstate->env->anchors,
  qstate->env->rrset_cache, qstate->env);
 vq->key_entry = ((void*)0);
 vq->empty_DS_name = ((void*)0);
 vq->ds_rrset = 0;
 anchor = anchors_lookup(qstate->env->anchors,
  lookup_name, lookup_len, vq->qchase.qclass);


 val_find_signer(subtype, &vq->qchase, vq->orig_msg->rep,
  vq->rrset_skip, &vq->signer_name, &vq->signer_len);
 if(vq->signer_name != ((void*)0) &&
  !dname_subdomain_c(lookup_name, vq->signer_name)) {
  log_nametypeclass(VERB_ALGO, "this signer name is not a parent "
   "of lookupname, omitted", vq->signer_name, 0, 0);
  vq->signer_name = ((void*)0);
 }
 if(vq->signer_name == ((void*)0)) {
  log_nametypeclass(VERB_ALGO, "no signer, using", lookup_name,
   0, 0);
 } else {
  lookup_name = vq->signer_name;
  lookup_len = vq->signer_len;
  log_nametypeclass(VERB_ALGO, "signer is", lookup_name, 0, 0);
 }


 if(subtype == VAL_CLASS_NAMEERROR && vq->signer_name &&
  anchor && dname_strict_subdomain_c(anchor->name, lookup_name)){
  lock_basic_unlock(&anchor->lock);
  anchor = anchors_lookup(qstate->env->anchors,
   lookup_name, lookup_len, vq->qchase.qclass);
  if(!anchor) {
   verbose(VERB_QUERY, "unsigned parent zone denies"
    " trust anchor, indeterminate");
   vq->chase_reply->security = sec_status_indeterminate;
   vq->state = VAL_FINISHED_STATE;
   return 1;
  }
  verbose(VERB_ALGO, "trust anchor NXDOMAIN by signed parent");
 } else if(subtype == VAL_CLASS_POSITIVE &&
  qstate->qinfo.qtype == LDNS_RR_TYPE_DNSKEY &&
  query_dname_compare(lookup_name, qstate->qinfo.qname) == 0) {


  dname_remove_label(&lookup_name, &lookup_len);
 }

 if(vq->rrset_skip > 0 || subtype == VAL_CLASS_CNAME ||
  subtype == VAL_CLASS_REFERRAL) {


  val_fill_reply(vq->chase_reply, vq->orig_msg->rep,
   vq->rrset_skip, lookup_name, lookup_len,
   vq->signer_name);
  if(verbosity >= VERB_ALGO)
   log_dns_msg("chased extract", &vq->qchase,
    vq->chase_reply);
 }

 vq->key_entry = key_cache_obtain(ve->kcache, lookup_name, lookup_len,
  vq->qchase.qclass, qstate->region, *qstate->env->now);


 if(vq->key_entry == ((void*)0) && anchor == ((void*)0)) {

  vq->chase_reply->security = sec_status_indeterminate;

  vq->state = VAL_FINISHED_STATE;
  return 1;
 }


 else if(vq->key_entry == ((void*)0) || (anchor &&
  dname_strict_subdomain_c(anchor->name, vq->key_entry->name))) {

  if(anchor && anchor->numDS == 0 && anchor->numDNSKEY == 0) {
   vq->chase_reply->security = sec_status_insecure;
   val_mark_insecure(vq->chase_reply, anchor->name,
    qstate->env->rrset_cache, qstate->env);
   lock_basic_unlock(&anchor->lock);
   vq->dlv_checked=1;

   vq->state = VAL_FINISHED_STATE;
   return 1;
  }

  verbose(VERB_DETAIL, "prime trust anchor");
  if(!prime_trust_anchor(qstate, vq, id, anchor)) {
   lock_basic_unlock(&anchor->lock);
   return val_error(qstate, id);
  }
  lock_basic_unlock(&anchor->lock);


  vq->state = VAL_FINDKEY_STATE;
  return 0;
 }
 if(anchor) {
  lock_basic_unlock(&anchor->lock);
 }

 if(key_entry_isnull(vq->key_entry)) {



  vq->chase_reply->security = sec_status_insecure;
  val_mark_insecure(vq->chase_reply, vq->key_entry->name,
   qstate->env->rrset_cache, qstate->env);

  vq->state = VAL_FINISHED_STATE;
  return 1;
 } else if(key_entry_isbad(vq->key_entry)) {

  errinf_dname(qstate, "key for validation", vq->key_entry->name);
  errinf(qstate, "is marked as invalid");
  if(key_entry_get_reason(vq->key_entry)) {
   errinf(qstate, "because of a previous");
   errinf(qstate, key_entry_get_reason(vq->key_entry));
  }

  vq->restart_count = VAL_MAX_RESTART_COUNT;
  vq->chase_reply->security = sec_status_bogus;
  vq->state = VAL_FINISHED_STATE;
  return 1;
 }



 vq->state = VAL_FINDKEY_STATE;
 return 1;
}

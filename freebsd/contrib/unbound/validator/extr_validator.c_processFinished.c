
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_22__ {scalar_t__ qtype; scalar_t__* qname; int qclass; } ;
struct val_qstate {scalar_t__ rrset_skip; int dlv_checked; int restart_count; TYPE_2__* orig_msg; TYPE_6__ qchase; void* state; TYPE_3__* chase_reply; } ;
struct val_env {scalar_t__ bogus_ttl; } ;
struct module_qstate {int query_flags; int * ext_state; TYPE_2__* return_msg; int return_rcode; TYPE_9__* env; int prefetch_leeway; int no_cache_store; TYPE_6__ qinfo; int * errinf; int * reply_origin; int region; int blacklist; } ;
typedef enum val_classification { ____Placeholder_val_classification } val_classification ;
struct TYPE_23__ {TYPE_16__* anchors; TYPE_1__* cfg; int neg_cache; } ;
struct TYPE_21__ {scalar_t__ security; scalar_t__ an_numrrsets; scalar_t__ ns_numrrsets; scalar_t__ rrset_count; scalar_t__ ttl; scalar_t__ serve_expired_ttl; int prefetch_ttl; } ;
struct TYPE_20__ {scalar_t__ security; } ;
struct TYPE_19__ {TYPE_4__* rep; int qinfo; } ;
struct TYPE_18__ {int val_log_level; scalar_t__ root_key_sentinel; scalar_t__ val_permissive_mode; scalar_t__ log_servfail; int val_log_squelch; scalar_t__ serve_expired_ttl; } ;
struct TYPE_17__ {scalar_t__ dlv_anchor; } ;


 int BIT_RD ;
 int LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int PREFETCH_TTL_CALC (scalar_t__) ;
 int SENTINEL_IS ;
 scalar_t__ SENTINEL_KEYTAG_LEN ;
 int SENTINEL_NOT ;
 int VAL_CLASS_CNAME ;
 int VAL_CLASS_REFERRAL ;
 void* VAL_INIT_STATE ;
 int VAL_MAX_RESTART_COUNT ;
 int VERB_ALGO ;
 int VERB_DETAIL ;
 scalar_t__ anchor_has_keytag (TYPE_16__*,int *,int,int ,int ,int ) ;
 scalar_t__ dname_lab_startswith (scalar_t__*,int ,char**) ;
 int dns_cache_store (TYPE_9__*,int *,TYPE_4__*,int,int ,int ,int *,int) ;
 char* errinf_to_str_bogus (struct module_qstate*) ;
 int free (char*) ;
 int log_err (char*) ;
 int log_info (char*,char*) ;
 int log_query_info (int ,char*,TYPE_6__*) ;
 int memset (struct val_qstate*,int ,int) ;
 int module_finished ;
 int module_restart_next ;
 scalar_t__ sec_status_bogus ;
 scalar_t__ sec_status_indeterminate ;
 scalar_t__ sec_status_insecure ;
 scalar_t__ sec_status_secure ;
 void* sec_status_secure_sentinel_fail ;
 void* sec_status_unchecked ;
 scalar_t__ sentinel_get_keytag (char*,int *) ;
 scalar_t__ strlen (int ) ;
 int val_blacklist (int *,int ,int *,int ) ;
 int val_chase_cname (TYPE_6__*,TYPE_4__*,scalar_t__*) ;
 int val_check_nonsecure (TYPE_9__*,TYPE_4__*) ;
 int val_classify_response (int,TYPE_6__*,TYPE_6__*,TYPE_4__*,scalar_t__) ;
 int val_dlv_init (struct module_qstate*,struct val_qstate*,struct val_env*,int) ;
 int val_neg_addreply (int ,TYPE_4__*) ;
 scalar_t__ val_next_unchecked (TYPE_4__*,scalar_t__) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
processFinished(struct module_qstate* qstate, struct val_qstate* vq,
 struct val_env* ve, int id)
{
 enum val_classification subtype = val_classify_response(
  qstate->query_flags, &qstate->qinfo, &vq->qchase,
  vq->orig_msg->rep, vq->rrset_skip);



 if((vq->chase_reply->security == sec_status_insecure ||
  vq->chase_reply->security == sec_status_indeterminate) &&
  qstate->env->anchors->dlv_anchor && !vq->dlv_checked) {
  vq->dlv_checked = 1;
  if(!val_dlv_init(qstate, vq, ve, id))
   return 0;
 }


 if(vq->rrset_skip == 0)
  vq->orig_msg->rep->security = vq->chase_reply->security;
 else if(subtype != VAL_CLASS_REFERRAL ||
  vq->rrset_skip < vq->orig_msg->rep->an_numrrsets +
  vq->orig_msg->rep->ns_numrrsets) {



  if(vq->chase_reply->security < vq->orig_msg->rep->security)
   vq->orig_msg->rep->security =
    vq->chase_reply->security;
 }

 if(subtype == VAL_CLASS_REFERRAL) {

  vq->rrset_skip = val_next_unchecked(vq->orig_msg->rep,
   vq->rrset_skip);
  if(vq->rrset_skip < vq->orig_msg->rep->rrset_count) {

   verbose(VERB_ALGO, "validator: go to next rrset");
   vq->chase_reply->security = sec_status_unchecked;
   vq->dlv_checked = 0;
   vq->state = VAL_INIT_STATE;
   return 1;
  }

 }
 if(vq->chase_reply->security != sec_status_bogus &&
  subtype == VAL_CLASS_CNAME) {

  if(!val_chase_cname(&vq->qchase, vq->orig_msg->rep,
   &vq->rrset_skip)) {
   verbose(VERB_ALGO, "validator: failed to chase CNAME");
   vq->orig_msg->rep->security = sec_status_bogus;
  } else {

   log_query_info(VERB_ALGO, "validator: chased to",
    &vq->qchase);
   vq->chase_reply->security = sec_status_unchecked;
   vq->dlv_checked = 0;
   vq->state = VAL_INIT_STATE;
   return 1;
  }
 }

 if(vq->orig_msg->rep->security == sec_status_secure) {





  val_check_nonsecure(qstate->env, vq->orig_msg->rep);
  if(vq->orig_msg->rep->security == sec_status_secure) {
   log_query_info(VERB_DETAIL, "validation success",
    &qstate->qinfo);
   if(!qstate->no_cache_store) {
    val_neg_addreply(qstate->env->neg_cache,
     vq->orig_msg->rep);
   }
  }
 }



 if(vq->orig_msg->rep->security == sec_status_bogus) {

  if(vq->restart_count < VAL_MAX_RESTART_COUNT) {
   int restart_count = vq->restart_count+1;
   verbose(VERB_ALGO, "validation failed, "
    "blacklist and retry to fetch data");
   val_blacklist(&qstate->blacklist, qstate->region,
    qstate->reply_origin, 0);
   qstate->reply_origin = ((void*)0);
   qstate->errinf = ((void*)0);
   memset(vq, 0, sizeof(*vq));
   vq->restart_count = restart_count;
   vq->state = VAL_INIT_STATE;
   verbose(VERB_ALGO, "pass back to next module");
   qstate->ext_state[id] = module_restart_next;
   return 0;
  }

  vq->orig_msg->rep->ttl = ve->bogus_ttl;
  vq->orig_msg->rep->prefetch_ttl =
   PREFETCH_TTL_CALC(vq->orig_msg->rep->ttl);
  vq->orig_msg->rep->serve_expired_ttl =
   vq->orig_msg->rep->ttl + qstate->env->cfg->serve_expired_ttl;
  if((qstate->env->cfg->val_log_level >= 1 ||
   qstate->env->cfg->log_servfail) &&
   !qstate->env->cfg->val_log_squelch) {
   if(qstate->env->cfg->val_log_level < 2 &&
    !qstate->env->cfg->log_servfail)
    log_query_info(0, "validation failure",
     &qstate->qinfo);
   else {
    char* err = errinf_to_str_bogus(qstate);
    if(err) log_info("%s", err);
    free(err);
   }
  }







  if(qstate->env->cfg->val_permissive_mode)
   vq->orig_msg->rep->security = sec_status_indeterminate;
 }

 if(vq->orig_msg->rep->security == sec_status_secure &&
  qstate->env->cfg->root_key_sentinel &&
  (qstate->qinfo.qtype == LDNS_RR_TYPE_A ||
  qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA)) {
  char* keytag_start;
  uint16_t keytag;
  if(*qstate->qinfo.qname == strlen(SENTINEL_IS) +
   SENTINEL_KEYTAG_LEN &&
   dname_lab_startswith(qstate->qinfo.qname, SENTINEL_IS,
   &keytag_start)) {
   if(sentinel_get_keytag(keytag_start, &keytag) &&
    !anchor_has_keytag(qstate->env->anchors,
    (uint8_t*)"", 1, 0, vq->qchase.qclass, keytag)) {
    vq->orig_msg->rep->security =
     sec_status_secure_sentinel_fail;
   }
  } else if(*qstate->qinfo.qname == strlen(SENTINEL_NOT) +
   SENTINEL_KEYTAG_LEN &&
   dname_lab_startswith(qstate->qinfo.qname, SENTINEL_NOT,
   &keytag_start)) {
   if(sentinel_get_keytag(keytag_start, &keytag) &&
    anchor_has_keytag(qstate->env->anchors,
    (uint8_t*)"", 1, 0, vq->qchase.qclass, keytag)) {
    vq->orig_msg->rep->security =
     sec_status_secure_sentinel_fail;
   }
  }
 }

 if(qstate->query_flags&BIT_RD) {


  if(!qstate->no_cache_store) {
   if(!dns_cache_store(qstate->env, &vq->orig_msg->qinfo,
    vq->orig_msg->rep, 0, qstate->prefetch_leeway, 0, ((void*)0),
    qstate->query_flags)) {
    log_err("out of memory caching validator results");
   }
  }
 } else {


  if(!dns_cache_store(qstate->env, &vq->orig_msg->qinfo,
   vq->orig_msg->rep, 1, 0, 0, ((void*)0),
   qstate->query_flags)) {
   log_err("out of memory caching validator results");
  }
 }
 qstate->return_rcode = LDNS_RCODE_NOERROR;
 qstate->return_msg = vq->orig_msg;
 qstate->ext_state[id] = module_finished;
 return 0;
}

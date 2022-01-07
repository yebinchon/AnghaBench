
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_5__ {int rrset_class; int type; int dname; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; void* security; } ;
struct query_info {scalar_t__ qtype; } ;
struct packed_rrset_data {int security; int trust; } ;
struct module_qstate {int reply_origin; } ;
struct module_env {TYPE_3__* cfg; } ;
struct key_entry_key {int name; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_6__ {int val_clean_additional; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 int LDNS_SECTION_ADDITIONAL ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SECTION_AUTHORITY ;
 int VERB_QUERY ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_origin (struct module_qstate*,int ) ;
 int errinf_rrset (struct module_qstate*,struct ub_packed_rrset_key*) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 int rrset_trust_validated ;
 void* sec_status_bogus ;
 int sec_status_secure ;
 int val_find_rrset_signer (struct ub_packed_rrset_key*,int **,size_t*) ;
 int val_verify_rrset_entry (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct key_entry_key*,char**,int ,struct module_qstate*) ;

__attribute__((used)) static int
validate_msg_signatures(struct module_qstate* qstate, struct module_env* env,
 struct val_env* ve, struct query_info* qchase,
 struct reply_info* chase_reply, struct key_entry_key* key_entry)
{
 uint8_t* sname;
 size_t i, slen;
 struct ub_packed_rrset_key* s;
 enum sec_status sec;
 int dname_seen = 0;
 char* reason = ((void*)0);


 for(i=0; i<chase_reply->an_numrrsets; i++) {
  s = chase_reply->rrsets[i];




  if(dname_seen && ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME) {
   dname_seen = 0;


   ((struct packed_rrset_data*)s->entry.data)->security =
    sec_status_secure;
   ((struct packed_rrset_data*)s->entry.data)->trust =
    rrset_trust_validated;
   continue;
  }


  sec = val_verify_rrset_entry(env, ve, s, key_entry, &reason,
   LDNS_SECTION_ANSWER, qstate);


  if(sec != sec_status_secure) {
   log_nametypeclass(VERB_QUERY, "validator: response "
    "has failed ANSWER rrset:", s->rk.dname,
    ntohs(s->rk.type), ntohs(s->rk.rrset_class));
   errinf(qstate, reason);
   if(ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME)
    errinf(qstate, "for CNAME");
   else if(ntohs(s->rk.type) == LDNS_RR_TYPE_DNAME)
    errinf(qstate, "for DNAME");
   errinf_origin(qstate, qstate->reply_origin);
   chase_reply->security = sec_status_bogus;
   return 0;
  }



  if(qchase->qtype != LDNS_RR_TYPE_DNAME &&
   ntohs(s->rk.type) == LDNS_RR_TYPE_DNAME) {
   dname_seen = 1;
  }
 }


 for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
  chase_reply->ns_numrrsets; i++) {
  s = chase_reply->rrsets[i];
  sec = val_verify_rrset_entry(env, ve, s, key_entry, &reason,
   LDNS_SECTION_AUTHORITY, qstate);


  if(sec != sec_status_secure) {
   log_nametypeclass(VERB_QUERY, "validator: response "
    "has failed AUTHORITY rrset:", s->rk.dname,
    ntohs(s->rk.type), ntohs(s->rk.rrset_class));
   errinf(qstate, reason);
   errinf_origin(qstate, qstate->reply_origin);
   errinf_rrset(qstate, s);
   chase_reply->security = sec_status_bogus;
   return 0;
  }
 }



 if(!env->cfg->val_clean_additional)
  return 1;

 for(i=chase_reply->an_numrrsets+chase_reply->ns_numrrsets;
  i<chase_reply->rrset_count; i++) {
  s = chase_reply->rrsets[i];


  val_find_rrset_signer(s, &sname, &slen);
  if(sname && query_dname_compare(sname, key_entry->name)==0)
   (void)val_verify_rrset_entry(env, ve, s, key_entry,
    &reason, LDNS_SECTION_ADDITIONAL, qstate);



 }

 return 1;
}

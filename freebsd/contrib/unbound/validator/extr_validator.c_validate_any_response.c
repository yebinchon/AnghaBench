
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {int type; int rrset_class; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {int security; size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {scalar_t__ qtype; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,scalar_t__) ;
 int nsec3_prove_wildcard (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct query_info*,struct key_entry_key*,int *) ;
 scalar_t__ ntohs (int ) ;
 void* sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 scalar_t__ val_nsec_proves_positive_wildcard (struct ub_packed_rrset_key*,struct query_info*,int *) ;
 int val_rrset_wildcard (struct ub_packed_rrset_key*,int **,size_t*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
validate_any_response(struct module_env* env, struct val_env* ve,
 struct query_info* qchase, struct reply_info* chase_reply,
 struct key_entry_key* kkey)
{



 uint8_t* wc = ((void*)0);
 size_t wl;
 int wc_NSEC_ok = 0;
 int nsec3s_seen = 0;
 size_t i;
 struct ub_packed_rrset_key* s;

 if(qchase->qtype != LDNS_RR_TYPE_ANY) {
  log_err("internal error: ANY validation called for non-ANY");
  chase_reply->security = sec_status_bogus;
  return;
 }


 for(i=0; i<chase_reply->an_numrrsets; i++) {
  s = chase_reply->rrsets[i];




  if(!val_rrset_wildcard(s, &wc, &wl)) {
   log_nametypeclass(VERB_QUERY, "Positive ANY response"
    " has inconsistent wildcard sigs:",
    s->rk.dname, ntohs(s->rk.type),
    ntohs(s->rk.rrset_class));
   chase_reply->security = sec_status_bogus;
   return;
  }
 }



 if(wc != ((void*)0))
   for(i=0; i<chase_reply->an_numrrsets+chase_reply->ns_numrrsets;
    i++) {
  s = chase_reply->rrsets[i];





  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC) {
   if(val_nsec_proves_positive_wildcard(s, qchase, wc)) {
    wc_NSEC_ok = 1;
   }

  }



  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC3) {
   nsec3s_seen = 1;
  }
 }




 if(wc != ((void*)0) && !wc_NSEC_ok && nsec3s_seen) {

  enum sec_status sec = nsec3_prove_wildcard(env, ve,
   chase_reply->rrsets,
   chase_reply->an_numrrsets+chase_reply->ns_numrrsets,
   qchase, kkey, wc);
  if(sec == sec_status_insecure) {
   verbose(VERB_ALGO, "Positive ANY wildcard response is "
    "insecure");
   chase_reply->security = sec_status_insecure;
   return;
  } else if(sec == sec_status_secure)
   wc_NSEC_ok = 1;
 }



 if(wc != ((void*)0) && !wc_NSEC_ok) {
  verbose(VERB_QUERY, "positive ANY response was wildcard "
   "expansion and did not prove original data "
   "did not exist");
  chase_reply->security = sec_status_bogus;
  return;
 }

 verbose(VERB_ALGO, "Successfully validated positive ANY response");
 chase_reply->security = sec_status_secure;
}

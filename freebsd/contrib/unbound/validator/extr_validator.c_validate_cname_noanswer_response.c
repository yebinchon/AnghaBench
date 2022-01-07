
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; int security; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int qname_len; int qname; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_QUERY ;
 int dname_count_labels (int *) ;
 int log_dns_msg (char*,struct query_info*,struct reply_info*) ;
 int nsec3_prove_nxornodata (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct query_info*,struct key_entry_key*,int*) ;
 int * nsec_closest_encloser (int ,struct ub_packed_rrset_key*) ;
 scalar_t__ nsec_proves_nodata (struct ub_packed_rrset_key*,struct query_info*,int **) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int *) ;
 void* sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 scalar_t__ val_nsec_proves_insecuredelegation (struct ub_packed_rrset_key*,struct query_info*) ;
 scalar_t__ val_nsec_proves_name_error (struct ub_packed_rrset_key*,int ) ;
 scalar_t__ val_nsec_proves_no_wc (struct ub_packed_rrset_key*,int ,int ) ;
 int verbose (scalar_t__,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
validate_cname_noanswer_response(struct module_env* env, struct val_env* ve,
 struct query_info* qchase, struct reply_info* chase_reply,
 struct key_entry_key* kkey)
{
 int nodata_valid_nsec = 0;
 uint8_t* ce = ((void*)0);

 uint8_t* wc = ((void*)0);
 int nxdomain_valid_nsec = 0;
 int nxdomain_valid_wnsec = 0;
 int nsec3s_seen = 0;
 struct ub_packed_rrset_key* s;
 size_t i;
 uint8_t* nsec_ce;
 int ce_labs = 0;
 int prev_ce_labs = 0;


 for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
  chase_reply->ns_numrrsets; i++) {
  s = chase_reply->rrsets[i];




  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC) {
   if(nsec_proves_nodata(s, qchase, &wc)) {
    nodata_valid_nsec = 1;

   }
   if(val_nsec_proves_name_error(s, qchase->qname)) {
    ce = nsec_closest_encloser(qchase->qname, s);
    nxdomain_valid_nsec = 1;
   }
   nsec_ce = nsec_closest_encloser(qchase->qname, s);
   ce_labs = dname_count_labels(nsec_ce);

   if(ce_labs > prev_ce_labs ||
          (ce_labs == prev_ce_labs &&
           nxdomain_valid_wnsec == 0)) {
          if(val_nsec_proves_no_wc(s, qchase->qname,
           qchase->qname_len))
           nxdomain_valid_wnsec = 1;
          else
           nxdomain_valid_wnsec = 0;
   }
   prev_ce_labs = ce_labs;
   if(val_nsec_proves_insecuredelegation(s, qchase)) {
    verbose(VERB_ALGO, "delegation is insecure");
    chase_reply->security = sec_status_insecure;
    return;
   }
  } else if(ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC3) {
   nsec3s_seen = 1;
  }
 }






 if(wc && !ce)
  nodata_valid_nsec = 0;
 else if(wc && ce) {
  if(query_dname_compare(wc, ce) != 0) {
   nodata_valid_nsec = 0;
  }
 }
 if(nxdomain_valid_nsec && !nxdomain_valid_wnsec) {

  nxdomain_valid_nsec = 0;
 }

 if(nodata_valid_nsec && nxdomain_valid_nsec) {
  verbose(VERB_QUERY, "CNAMEchain to noanswer proves that name "
   "exists and not exists, bogus");
  chase_reply->security = sec_status_bogus;
  return;
 }
 if(!nodata_valid_nsec && !nxdomain_valid_nsec && nsec3s_seen) {
  int nodata;
  enum sec_status sec = nsec3_prove_nxornodata(env, ve,
   chase_reply->rrsets+chase_reply->an_numrrsets,
   chase_reply->ns_numrrsets, qchase, kkey, &nodata);
  if(sec == sec_status_insecure) {
   verbose(VERB_ALGO, "CNAMEchain to noanswer response "
    "is insecure");
   chase_reply->security = sec_status_insecure;
   return;
  } else if(sec == sec_status_secure) {
   if(nodata)
    nodata_valid_nsec = 1;
   else nxdomain_valid_nsec = 1;
  }
 }

 if(!nodata_valid_nsec && !nxdomain_valid_nsec) {
  verbose(VERB_QUERY, "CNAMEchain to noanswer response failed "
   "to prove status with NSEC/NSEC3");
  if(verbosity >= VERB_ALGO)
   log_dns_msg("Failed CNAMEnoanswer", qchase, chase_reply);
  chase_reply->security = sec_status_bogus;
  return;
 }

 if(nodata_valid_nsec)
  verbose(VERB_ALGO, "successfully validated CNAME chain to a "
   "NODATA response.");
 else verbose(VERB_ALGO, "successfully validated CNAME chain to a "
   "NAMEERROR response.");
 chase_reply->security = sec_status_secure;
}

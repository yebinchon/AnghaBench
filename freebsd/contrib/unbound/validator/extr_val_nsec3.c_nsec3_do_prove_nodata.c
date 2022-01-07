
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; int * qname; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int scratch; } ;
struct ce_response {int nc_rr; scalar_t__ nc_rrset; int ce_len; scalar_t__ ce; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int VERB_ALGO ;
 int dname_is_root (int *) ;
 scalar_t__ find_matching_nsec3 (struct module_env*,struct nsec3_filter*,int *,int *,size_t,struct ub_packed_rrset_key**,int*) ;
 int log_assert (scalar_t__) ;
 int * nsec3_ce_wildcard (int ,scalar_t__,int ,size_t*) ;
 scalar_t__ nsec3_has_optout (scalar_t__,int ) ;
 scalar_t__ nsec3_has_type (struct ub_packed_rrset_key*,int,scalar_t__) ;
 int nsec3_prove_closest_encloser (struct module_env*,struct nsec3_filter*,int *,struct query_info*,int,struct ce_response*) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum sec_status
nsec3_do_prove_nodata(struct module_env* env, struct nsec3_filter* flt,
 rbtree_type* ct, struct query_info* qinfo)
{
 struct ce_response ce;
 uint8_t* wc;
 size_t wclen;
 struct ub_packed_rrset_key* rrset;
 int rr;
 enum sec_status sec;

 if(find_matching_nsec3(env, flt, ct, qinfo->qname, qinfo->qname_len,
  &rrset, &rr)) {

  if(nsec3_has_type(rrset, rr, qinfo->qtype)) {
   verbose(VERB_ALGO, "proveNodata: Matching NSEC3 "
    "proved that type existed, bogus");
   return sec_status_bogus;
  } else if(nsec3_has_type(rrset, rr, LDNS_RR_TYPE_CNAME)) {
   verbose(VERB_ALGO, "proveNodata: Matching NSEC3 "
    "proved that a CNAME existed, bogus");
   return sec_status_bogus;
  }
  if(qinfo->qtype == LDNS_RR_TYPE_DS && qinfo->qname_len != 1
   && nsec3_has_type(rrset, rr, LDNS_RR_TYPE_SOA) &&
   !dname_is_root(qinfo->qname)) {
   verbose(VERB_ALGO, "proveNodata: apex NSEC3 "
    "abused for no DS proof, bogus");
   return sec_status_bogus;
  } else if(qinfo->qtype != LDNS_RR_TYPE_DS &&
   nsec3_has_type(rrset, rr, LDNS_RR_TYPE_NS) &&
   !nsec3_has_type(rrset, rr, LDNS_RR_TYPE_SOA)) {
   if(!nsec3_has_type(rrset, rr, LDNS_RR_TYPE_DS)) {
    verbose(VERB_ALGO, "proveNodata: matching "
     "NSEC3 is insecure delegation");
    return sec_status_insecure;
   }
   verbose(VERB_ALGO, "proveNodata: matching "
    "NSEC3 is a delegation, bogus");
   return sec_status_bogus;
  }
  return sec_status_secure;
 }




 sec = nsec3_prove_closest_encloser(env, flt, ct, qinfo, 1, &ce);
 if(sec == sec_status_bogus) {
  verbose(VERB_ALGO, "proveNodata: did not match qname, "
            "nor found a proven closest encloser.");
  return sec_status_bogus;
 } else if(sec==sec_status_insecure && qinfo->qtype!=LDNS_RR_TYPE_DS){
  verbose(VERB_ALGO, "proveNodata: closest nsec3 is insecure "
            "delegation.");
  return sec_status_insecure;
 }




 log_assert(ce.ce);
 wc = nsec3_ce_wildcard(env->scratch, ce.ce, ce.ce_len, &wclen);
 if(wc && find_matching_nsec3(env, flt, ct, wc, wclen, &rrset, &rr)) {

  if(nsec3_has_type(rrset, rr, qinfo->qtype)) {
   verbose(VERB_ALGO, "nsec3 nodata proof: matching "
    "wildcard had qtype, bogus");
   return sec_status_bogus;
  } else if(nsec3_has_type(rrset, rr, LDNS_RR_TYPE_CNAME)) {
   verbose(VERB_ALGO, "nsec3 nodata proof: matching "
    "wildcard had a CNAME, bogus");
   return sec_status_bogus;
  }
  if(qinfo->qtype == LDNS_RR_TYPE_DS && qinfo->qname_len != 1
   && nsec3_has_type(rrset, rr, LDNS_RR_TYPE_SOA)) {
   verbose(VERB_ALGO, "nsec3 nodata proof: matching "
    "wildcard for no DS proof has a SOA, bogus");
   return sec_status_bogus;
  } else if(qinfo->qtype != LDNS_RR_TYPE_DS &&
   nsec3_has_type(rrset, rr, LDNS_RR_TYPE_NS) &&
   !nsec3_has_type(rrset, rr, LDNS_RR_TYPE_SOA)) {
   verbose(VERB_ALGO, "nsec3 nodata proof: matching "
    "wildcard is a delegation, bogus");
   return sec_status_bogus;
  }

  if(ce.nc_rrset && nsec3_has_optout(ce.nc_rrset, ce.nc_rr)) {
   verbose(VERB_ALGO, "nsec3 nodata proof: matching "
    "wildcard is in optout range, insecure");
   return sec_status_insecure;
  }
  return sec_status_secure;
 }





 if(!ce.nc_rrset) {
  verbose(VERB_ALGO, "nsec3 nodata proof: no next closer nsec3");
  return sec_status_bogus;
 }


 log_assert(ce.nc_rrset);
 if(!nsec3_has_optout(ce.nc_rrset, ce.nc_rr)) {
  if(qinfo->qtype == LDNS_RR_TYPE_DS)
    verbose(VERB_ALGO, "proveNodata: covering NSEC3 was not "
   "opt-out in an opt-out DS NOERROR/NODATA case.");
  else verbose(VERB_ALGO, "proveNodata: could not find matching "
   "NSEC3, nor matching wildcard, nor optout NSEC3 "
   "-- no more options, bogus.");
  return sec_status_bogus;
 }

 return sec_status_insecure;
}

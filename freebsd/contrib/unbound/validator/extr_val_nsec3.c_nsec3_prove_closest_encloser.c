
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {int qname_len; int qname; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int dummy; } ;
struct ce_response {int nc_rr; int nc_rrset; int ce; int ce_rr; int ce_rrset; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int LDNS_RR_TYPE_DNAME ;
 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_SOA ;
 int VERB_ALGO ;
 int find_covering_nsec3 (struct module_env*,struct nsec3_filter*,int *,int *,size_t,int *,int *) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int memset (struct ce_response*,int ,int) ;
 int next_closer (int ,int ,int ,int **,size_t*) ;
 int nsec3_find_closest_encloser (struct module_env*,struct nsec3_filter*,int *,struct query_info*,struct ce_response*) ;
 scalar_t__ nsec3_has_type (int ,int ,int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum sec_status
nsec3_prove_closest_encloser(struct module_env* env, struct nsec3_filter* flt,
 rbtree_type* ct, struct query_info* qinfo, int prove_does_not_exist,
 struct ce_response* ce)
{
 uint8_t* nc;
 size_t nc_len;

 memset(ce, 0, sizeof(*ce));

 if(!nsec3_find_closest_encloser(env, flt, ct, qinfo, ce)) {
  verbose(VERB_ALGO, "nsec3 proveClosestEncloser: could "
   "not find a candidate for the closest encloser.");
  return sec_status_bogus;
 }
 log_nametypeclass(VERB_ALGO, "ce candidate", ce->ce, 0, 0);

 if(query_dname_compare(ce->ce, qinfo->qname) == 0) {
  if(prove_does_not_exist) {
   verbose(VERB_ALGO, "nsec3 proveClosestEncloser: "
    "proved that qname existed, bad");
   return sec_status_bogus;
  }


  return sec_status_secure;
 }




 if(nsec3_has_type(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_NS) &&
  !nsec3_has_type(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_SOA)) {
  if(!nsec3_has_type(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_DS)) {
   verbose(VERB_ALGO, "nsec3 proveClosestEncloser: "
    "closest encloser is insecure delegation");
   return sec_status_insecure;
  }
  verbose(VERB_ALGO, "nsec3 proveClosestEncloser: closest "
   "encloser was a delegation, bad");
  return sec_status_bogus;
 }
 if(nsec3_has_type(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_DNAME)) {
  verbose(VERB_ALGO, "nsec3 proveClosestEncloser: closest "
   "encloser was a DNAME, bad");
  return sec_status_bogus;
 }


 next_closer(qinfo->qname, qinfo->qname_len, ce->ce, &nc, &nc_len);
 if(!find_covering_nsec3(env, flt, ct, nc, nc_len,
  &ce->nc_rrset, &ce->nc_rr)) {
  verbose(VERB_ALGO, "nsec3: Could not find proof that the "
            "candidate encloser was the closest encloser");
  return sec_status_bogus;
 }
 return sec_status_secure;
}

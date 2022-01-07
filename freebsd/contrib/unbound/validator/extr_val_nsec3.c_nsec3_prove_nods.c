
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {scalar_t__ qtype; int qname_len; int qname; } ;
struct nsec3_filter {int zone; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
struct ce_response {int nc_rrset; int nc_rr; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int VERB_ALGO ;
 int filter_init (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ;
 scalar_t__ find_matching_nsec3 (struct module_env*,struct nsec3_filter*,int *,int ,int,struct ub_packed_rrset_key**,int*) ;
 int key_entry_isgood (struct key_entry_key*) ;
 int list_is_secure (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct key_entry_key*,char**,struct module_qstate*) ;
 int log_assert (int) ;
 int nsec3_has_optout (int,int ) ;
 scalar_t__ nsec3_has_type (struct ub_packed_rrset_key*,int,scalar_t__) ;
 int nsec3_hash_cmp ;
 scalar_t__ nsec3_iteration_count_high (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ;
 int nsec3_prove_closest_encloser (struct module_env*,struct nsec3_filter*,int *,struct query_info*,int,struct ce_response*) ;
 int rbtree_init (int *,int *) ;
 int sec_status_bogus ;
 int sec_status_indeterminate ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*) ;

enum sec_status
nsec3_prove_nods(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key** list, size_t num,
 struct query_info* qinfo, struct key_entry_key* kkey, char** reason,
 struct module_qstate* qstate)
{
 rbtree_type ct;
 struct nsec3_filter flt;
 struct ce_response ce;
 struct ub_packed_rrset_key* rrset;
 int rr;
 log_assert(qinfo->qtype == LDNS_RR_TYPE_DS);

 if(!list || num == 0 || !kkey || !key_entry_isgood(kkey)) {
  *reason = "no valid NSEC3s";
  return sec_status_bogus;
 }
 if(!list_is_secure(env, ve, list, num, kkey, reason, qstate))
  return sec_status_bogus;
 rbtree_init(&ct, &nsec3_hash_cmp);
 filter_init(&flt, list, num, qinfo);
 if(!flt.zone) {
  *reason = "no NSEC3 records";
  return sec_status_bogus;
 }
 if(nsec3_iteration_count_high(ve, &flt, kkey))
  return sec_status_insecure;



 if(find_matching_nsec3(env, &flt, &ct, qinfo->qname, qinfo->qname_len,
  &rrset, &rr)) {



  if(nsec3_has_type(rrset, rr, LDNS_RR_TYPE_SOA) &&
   qinfo->qname_len != 1) {
   verbose(VERB_ALGO, "nsec3 provenods: NSEC3 is from"
    " child zone, bogus");
   *reason = "NSEC3 from child zone";
   return sec_status_bogus;
  } else if(nsec3_has_type(rrset, rr, LDNS_RR_TYPE_DS)) {
   verbose(VERB_ALGO, "nsec3 provenods: NSEC3 has qtype"
    " DS, bogus");
   *reason = "NSEC3 has DS in bitmap";
   return sec_status_bogus;
  }


  if(!nsec3_has_type(rrset, rr, LDNS_RR_TYPE_NS))
   return sec_status_indeterminate;

  return sec_status_secure;
 }


 if(nsec3_prove_closest_encloser(env, &flt, &ct, qinfo, 1, &ce)
  != sec_status_secure) {


  verbose(VERB_ALGO, "nsec3 provenods: did not match qname, "
            "nor found a proven closest encloser.");
  *reason = "no NSEC3 closest encloser";
  return sec_status_bogus;
 }


 if(!ce.nc_rrset) {
  verbose(VERB_ALGO, "nsec3 nods proof: no next closer nsec3");
  *reason = "no NSEC3 next closer";
  return sec_status_bogus;
 }





 log_assert(ce.nc_rrset);
 if(!nsec3_has_optout(ce.nc_rrset, ce.nc_rr)) {
  verbose(VERB_ALGO, "nsec3 provenods: covering NSEC3 was not "
   "opt-out in an opt-out DS NOERROR/NODATA case.");
  *reason = "covering NSEC3 was not opt-out in an opt-out "
   "DS NOERROR/NODATA case";
  return sec_status_bogus;
 }

 return sec_status_insecure;
}

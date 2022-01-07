
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int dummy; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int scratch; } ;
struct ce_response {int nc_rr; scalar_t__ nc_rrset; int ce_len; int ce; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int VERB_ALGO ;
 int find_covering_nsec3 (struct module_env*,struct nsec3_filter*,int *,int *,size_t,struct ub_packed_rrset_key**,int*) ;
 int log_assert (int ) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int * nsec3_ce_wildcard (int ,int ,int ,size_t*) ;
 scalar_t__ nsec3_has_optout (scalar_t__,int ) ;
 int nsec3_prove_closest_encloser (struct module_env*,struct nsec3_filter*,int *,struct query_info*,int,struct ce_response*) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum sec_status
nsec3_do_prove_nameerror(struct module_env* env, struct nsec3_filter* flt,
 rbtree_type* ct, struct query_info* qinfo)
{
 struct ce_response ce;
 uint8_t* wc;
 size_t wclen;
 struct ub_packed_rrset_key* wc_rrset;
 int wc_rr;
 enum sec_status sec;




 sec = nsec3_prove_closest_encloser(env, flt, ct, qinfo, 1, &ce);
 if(sec != sec_status_secure) {
  if(sec == sec_status_bogus)
   verbose(VERB_ALGO, "nsec3 nameerror proof: failed "
    "to prove a closest encloser");
  else verbose(VERB_ALGO, "nsec3 nameerror proof: closest "
    "nsec3 is an insecure delegation");
  return sec;
 }
 log_nametypeclass(VERB_ALGO, "nsec3 nameerror: proven ce=", ce.ce,0,0);



 log_assert(ce.ce);
 wc = nsec3_ce_wildcard(env->scratch, ce.ce, ce.ce_len, &wclen);
 if(!wc || !find_covering_nsec3(env, flt, ct, wc, wclen,
  &wc_rrset, &wc_rr)) {
  verbose(VERB_ALGO, "nsec3 nameerror proof: could not prove "
   "that the applicable wildcard did not exist.");
  return sec_status_bogus;
 }

 if(ce.nc_rrset && nsec3_has_optout(ce.nc_rrset, ce.nc_rr)) {
  verbose(VERB_ALGO, "nsec3 nameerror proof: nc has optout");
  return sec_status_insecure;
 }
 return sec_status_secure;
}

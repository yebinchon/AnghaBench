
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ ldns_dname_compare (int *,int *) ;
 scalar_t__ ldns_dname_is_subdomain (int *,int *) ;
 scalar_t__ ldns_rdf_compare (int *,int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_owner (int *) ;
 size_t ldns_zone_rr_count (int const*) ;
 int * ldns_zone_rrs (int const*) ;
 int * ldns_zone_soa (int const*) ;

ldns_rr_list *
ldns_zone_glue_rr_list(const ldns_zone *z)
{
 ldns_rr_list *zone_cuts;
 ldns_rr_list *addr;
 ldns_rr_list *glue;
 ldns_rr *r, *ns, *a;
 ldns_rdf *dname_a, *ns_owner;
 size_t i,j;

 zone_cuts = ((void*)0);
 addr = ((void*)0);
 glue = ((void*)0);


 if (!ldns_zone_soa(z)) {
  return ((void*)0);
 }

 zone_cuts = ldns_rr_list_new();
 if (!zone_cuts) goto memory_error;
 addr = ldns_rr_list_new();
 if (!addr) goto memory_error;
 glue = ldns_rr_list_new();
 if (!glue) goto memory_error;

 for(i = 0; i < ldns_zone_rr_count(z); i++) {
  r = ldns_rr_list_rr(ldns_zone_rrs(z), i);
  if (ldns_rr_get_type(r) == LDNS_RR_TYPE_A ||
    ldns_rr_get_type(r) == LDNS_RR_TYPE_AAAA) {

   if (!ldns_rr_list_push_rr(addr, r)) goto memory_error;
   continue;
  }
  if (ldns_rr_get_type(r) == LDNS_RR_TYPE_NS) {




   if (ldns_rdf_compare(ldns_rr_owner(r),
      ldns_rr_owner(ldns_zone_soa(z))) != 0) {
    if (!ldns_rr_list_push_rr(zone_cuts, r)) goto memory_error;
   }
   continue;
  }
 }


 for(i = 0; i < ldns_rr_list_rr_count(zone_cuts); i++) {
  ns = ldns_rr_list_rr(zone_cuts, i);
  ns_owner = ldns_rr_owner(ns);

  for(j = 0; j < ldns_rr_list_rr_count(addr); j++) {
   a = ldns_rr_list_rr(addr, j);
   dname_a = ldns_rr_owner(a);

   if (ldns_dname_is_subdomain(dname_a, ns_owner) ||
    ldns_dname_compare(dname_a, ns_owner) == 0) {

    if (!ldns_rr_list_push_rr(glue, a)) goto memory_error;
   }
  }
 }

 ldns_rr_list_free(addr);
 ldns_rr_list_free(zone_cuts);

 if (ldns_rr_list_rr_count(glue) == 0) {
  ldns_rr_list_free(glue);
  return ((void*)0);
 } else {
  return glue;
 }

memory_error:
 if (zone_cuts) {
  LDNS_FREE(zone_cuts);
 }
 if (addr) {
  ldns_rr_list_free(addr);
 }
 if (glue) {
  ldns_rr_list_free(glue);
 }
 return ((void*)0);
}

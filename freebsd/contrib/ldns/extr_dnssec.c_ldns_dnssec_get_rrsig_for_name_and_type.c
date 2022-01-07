
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ ldns_dname_compare (int ,int const*) ;
 scalar_t__ const ldns_rdf2rr_type (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rrsig_typecovered (int *) ;

ldns_rr *
ldns_dnssec_get_rrsig_for_name_and_type(const ldns_rdf *name,
                                        const ldns_rr_type type,
                                        const ldns_rr_list *rrs)
{
 size_t i;
 ldns_rr *candidate;

 if (!name || !rrs) {
  return ((void*)0);
 }

 for (i = 0; i < ldns_rr_list_rr_count(rrs); i++) {
  candidate = ldns_rr_list_rr(rrs, i);
  if (ldns_rr_get_type(candidate) == LDNS_RR_TYPE_RRSIG) {
   if (ldns_dname_compare(ldns_rr_owner(candidate),
                          name) == 0 &&
       ldns_rdf2rr_type(ldns_rr_rrsig_typecovered(candidate))
       == type
       ) {
    return candidate;
   }
  }
 }

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rr ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ ldns_calc_keytag (int *) ;
 scalar_t__ ldns_dname_compare (int ,int ) ;
 scalar_t__ ldns_rdf2native_int16 (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rrsig_keytag (int const*) ;
 int ldns_rr_rrsig_signame (int const*) ;

ldns_rr *
ldns_dnssec_get_dnskey_for_rrsig(const ldns_rr *rrsig,
         const ldns_rr_list *rrs)
{
 size_t i;
 ldns_rr *candidate;

 if (!rrsig || !rrs) {
  return ((void*)0);
 }

 for (i = 0; i < ldns_rr_list_rr_count(rrs); i++) {
  candidate = ldns_rr_list_rr(rrs, i);
  if (ldns_rr_get_type(candidate) == LDNS_RR_TYPE_DNSKEY) {
   if (ldns_dname_compare(ldns_rr_owner(candidate),
                          ldns_rr_rrsig_signame(rrsig)) == 0 &&
       ldns_rdf2native_int16(ldns_rr_rrsig_keytag(rrsig)) ==
       ldns_calc_keytag(candidate)
       ) {
    return candidate;
   }
  }
 }

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int ldns_time (int *) ;
 int * ldns_validate_domain_dnskey_time (int const*,int const*,int const*,int ) ;

ldns_rr_list *
ldns_validate_domain_dnskey(const ldns_resolver * res,
        const ldns_rdf * domain,
        const ldns_rr_list * keys)
{
 return ldns_validate_domain_dnskey_time(
   res, domain, keys, ldns_time(((void*)0)));
}

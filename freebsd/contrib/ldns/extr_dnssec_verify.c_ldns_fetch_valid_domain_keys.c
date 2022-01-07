
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int * ldns_fetch_valid_domain_keys_time (int const*,int const*,int const*,int ,int *) ;
 int ldns_time (int *) ;

ldns_rr_list *
ldns_fetch_valid_domain_keys(const ldns_resolver *res,
                             const ldns_rdf *domain,
                             const ldns_rr_list *keys,
                             ldns_status *status)
{
 return ldns_fetch_valid_domain_keys_time(
   res, domain, keys, ldns_time(((void*)0)), status);
}

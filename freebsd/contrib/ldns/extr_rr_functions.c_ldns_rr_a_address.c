
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,int ) ;

ldns_rdf *
ldns_rr_a_address(const ldns_rr *r)
{

 if (!r || (ldns_rr_get_type(r) != LDNS_RR_TYPE_A &&
   ldns_rr_get_type(r) != LDNS_RR_TYPE_AAAA)) {
  return ((void*)0);
 }
 return ldns_rr_rdf(r, 0);
}

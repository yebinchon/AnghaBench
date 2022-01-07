
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int LDNS_STATUS_ERR ;
 int ldns_resolver_push_nameserver (int *,int *) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,int ) ;

ldns_status
ldns_resolver_push_nameserver_rr(ldns_resolver *r, const ldns_rr *rr)
{
 ldns_rdf *address;
 if ((!rr) || (ldns_rr_get_type(rr) != LDNS_RR_TYPE_A &&
   ldns_rr_get_type(rr) != LDNS_RR_TYPE_AAAA)) {
  return LDNS_STATUS_ERR;
 }
 address = ldns_rr_rdf(rr, 0);
 if (address) {
  return ldns_resolver_push_nameserver(r, address);
 } else {
  return LDNS_STATUS_ERR;
 }
}

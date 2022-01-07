
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_free (int *) ;
 scalar_t__ ldns_resolver_query_status (int **,int *,int const*,int ,int ,int ) ;

ldns_pkt *
ldns_resolver_query(const ldns_resolver *r, const ldns_rdf *name,
 ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
 ldns_pkt* pkt = ((void*)0);
 if (ldns_resolver_query_status(&pkt, (ldns_resolver *)r,
    name, t, c, flags) != LDNS_STATUS_OK) {
  ldns_pkt_free(pkt);
 }
 return pkt;
}

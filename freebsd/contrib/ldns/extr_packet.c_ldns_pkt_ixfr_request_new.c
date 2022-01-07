
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RR_TYPE_IXFR ;
 int * ldns_pkt_authsoa (int *,int ) ;
 int * ldns_pkt_query_new_internal (int *,int ,int ,int ,int *) ;

ldns_pkt *
ldns_pkt_ixfr_request_new(ldns_rdf *rr_name, ldns_rr_class rr_class,
 uint16_t flags, ldns_rr* soa)
{
 ldns_rr* authsoa_rr = soa;
 if (!authsoa_rr) {
  authsoa_rr = ldns_pkt_authsoa(rr_name, rr_class);
 }
 return ldns_pkt_query_new_internal(rr_name, LDNS_RR_TYPE_IXFR,
  rr_class, flags, authsoa_rr);
}

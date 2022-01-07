
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int * ldns_pkt_query_new_internal (int *,int ,int ,int ,int *) ;

ldns_pkt *
ldns_pkt_query_new(ldns_rdf *rr_name, ldns_rr_type rr_type,
 ldns_rr_class rr_class, uint16_t flags)
{
 return ldns_pkt_query_new_internal(rr_name, rr_type,
  rr_class, flags, ((void*)0));
}

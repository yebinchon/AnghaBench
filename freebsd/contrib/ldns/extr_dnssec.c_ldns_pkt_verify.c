
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int ldns_pkt_verify_time (int const*,int ,int const*,int const*,int const*,int ,int *) ;
 int ldns_time (int *) ;

ldns_status
ldns_pkt_verify(const ldns_pkt *p, ldns_rr_type t, const ldns_rdf *o,
  const ldns_rr_list *k, const ldns_rr_list *s, ldns_rr_list *good_keys)
{
 return ldns_pkt_verify_time(p, t, o, k, s, ldns_time(((void*)0)), good_keys);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_pkt ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 size_t ldns_pkt_ancount (int const*) ;
 int ldns_pkt_answer (int const*) ;
 int ldns_pkt_authority (int const*) ;
 size_t ldns_pkt_nscount (int const*) ;
 scalar_t__ ldns_rr_get_type (int ) ;
 int ldns_rr_list_rr (int ,size_t) ;

bool
ldns_dnssec_pkt_has_rrsigs(const ldns_pkt *pkt)
{
 size_t i;
 for (i = 0; i < ldns_pkt_ancount(pkt); i++) {
  if (ldns_rr_get_type(ldns_rr_list_rr(ldns_pkt_answer(pkt), i)) ==
      LDNS_RR_TYPE_RRSIG) {
   return 1;
  }
 }
 for (i = 0; i < ldns_pkt_nscount(pkt); i++) {
  if (ldns_rr_get_type(ldns_rr_list_rr(ldns_pkt_authority(pkt), i)) ==
      LDNS_RR_TYPE_RRSIG) {
   return 1;
  }
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;
 int ldns_pkt_additional (int const*) ;
 int * ldns_pkt_all (int const*) ;
 int * ldns_pkt_all_noquestion (int const*) ;
 int ldns_pkt_answer (int const*) ;
 int ldns_pkt_authority (int const*) ;
 int ldns_pkt_question (int const*) ;
 int * ldns_rr_list_clone (int ) ;

ldns_rr_list *
ldns_pkt_get_section_clone(const ldns_pkt *packet, ldns_pkt_section s)
{
 switch(s) {
 case 128:
  return ldns_rr_list_clone(ldns_pkt_question(packet));
 case 132:
  return ldns_rr_list_clone(ldns_pkt_answer(packet));
 case 129:
  return ldns_rr_list_clone(ldns_pkt_authority(packet));
 case 133:
  return ldns_rr_list_clone(ldns_pkt_additional(packet));
 case 131:

  return ldns_pkt_all(packet);
 case 130:
  return ldns_pkt_all_noquestion(packet);
 default:
  return ((void*)0);
 }
}

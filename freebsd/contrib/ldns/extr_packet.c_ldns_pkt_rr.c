
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;
 int ldns_pkt_additional (int const*) ;
 int ldns_pkt_answer (int const*) ;
 int ldns_pkt_authority (int const*) ;
 int ldns_pkt_question (int const*) ;
 int ldns_rr_list_contains_rr (int ,int const*) ;

bool
ldns_pkt_rr(const ldns_pkt *pkt, ldns_pkt_section sec, const ldns_rr *rr)
{
 bool result = 0;

 switch (sec) {
 case 128:
  return ldns_rr_list_contains_rr(ldns_pkt_question(pkt), rr);
 case 132:
  return ldns_rr_list_contains_rr(ldns_pkt_answer(pkt), rr);
 case 129:
  return ldns_rr_list_contains_rr(ldns_pkt_authority(pkt), rr);
 case 133:
  return ldns_rr_list_contains_rr(ldns_pkt_additional(pkt), rr);
 case 131:
  result = ldns_rr_list_contains_rr(ldns_pkt_question(pkt), rr);
 case 130:
  result = result
      || ldns_rr_list_contains_rr(ldns_pkt_answer(pkt), rr)
      || ldns_rr_list_contains_rr(ldns_pkt_authority(pkt), rr)
      || ldns_rr_list_contains_rr(ldns_pkt_additional(pkt), rr);
 }

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;
 int ldns_pkt_additional (int *) ;
 int ldns_pkt_ancount (int *) ;
 int ldns_pkt_answer (int *) ;
 int ldns_pkt_arcount (int *) ;
 int ldns_pkt_authority (int *) ;
 int ldns_pkt_nscount (int *) ;
 int ldns_pkt_qdcount (int *) ;
 int ldns_pkt_question (int *) ;
 int ldns_pkt_set_ancount (int *,int ) ;
 int ldns_pkt_set_arcount (int *,int ) ;
 int ldns_pkt_set_nscount (int *,int ) ;
 int ldns_pkt_set_qdcount (int *,int ) ;
 int ldns_rr_list_push_rr (int ,int *) ;

bool
ldns_pkt_push_rr(ldns_pkt *packet, ldns_pkt_section section, ldns_rr *rr)
{
 switch(section) {
  case 128:
   if (!ldns_rr_list_push_rr(ldns_pkt_question(packet), rr)) {
    return 0;
   }
   ldns_pkt_set_qdcount(packet, ldns_pkt_qdcount(packet) + 1);
   break;
  case 132:
   if (!ldns_rr_list_push_rr(ldns_pkt_answer(packet), rr)) {
    return 0;
   }
   ldns_pkt_set_ancount(packet, ldns_pkt_ancount(packet) + 1);
   break;
  case 129:
   if (!ldns_rr_list_push_rr(ldns_pkt_authority(packet), rr)) {
    return 0;
   }
   ldns_pkt_set_nscount(packet, ldns_pkt_nscount(packet) + 1);
   break;
  case 133:
   if (!ldns_rr_list_push_rr(ldns_pkt_additional(packet), rr)) {
    return 0;
   }
   ldns_pkt_set_arcount(packet, ldns_pkt_arcount(packet) + 1);
   break;
  case 131:
  case 130:

   break;
 }
 return 1;
}

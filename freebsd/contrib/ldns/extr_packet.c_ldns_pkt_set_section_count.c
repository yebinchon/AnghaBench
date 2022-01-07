
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;
 int ldns_pkt_set_ancount (int *,int ) ;
 int ldns_pkt_set_arcount (int *,int ) ;
 int ldns_pkt_set_nscount (int *,int ) ;
 int ldns_pkt_set_qdcount (int *,int ) ;

void
ldns_pkt_set_section_count(ldns_pkt *packet, ldns_pkt_section s, uint16_t count)
{
 switch(s) {
  case 128:
   ldns_pkt_set_qdcount(packet, count);
   break;
  case 132:
   ldns_pkt_set_ancount(packet, count);
   break;
  case 129:
   ldns_pkt_set_nscount(packet, count);
   break;
  case 133:
   ldns_pkt_set_arcount(packet, count);
   break;
  case 131:
  case 130:
   break;
 }
}

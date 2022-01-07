
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;
 scalar_t__ ldns_pkt_ancount (int const*) ;
 scalar_t__ ldns_pkt_arcount (int const*) ;
 scalar_t__ ldns_pkt_nscount (int const*) ;
 scalar_t__ ldns_pkt_qdcount (int const*) ;

uint16_t
ldns_pkt_section_count(const ldns_pkt *packet, ldns_pkt_section s)
{
 switch(s) {
 case 128:
  return ldns_pkt_qdcount(packet);
 case 132:
  return ldns_pkt_ancount(packet);
 case 129:
  return ldns_pkt_nscount(packet);
 case 133:
  return ldns_pkt_arcount(packet);
 case 131:
  return ldns_pkt_qdcount(packet) +
   ldns_pkt_ancount(packet) +
   ldns_pkt_nscount(packet) +
   ldns_pkt_arcount(packet);
 case 130:
  return ldns_pkt_ancount(packet) +
   ldns_pkt_nscount(packet) +
   ldns_pkt_arcount(packet);
 default:
  return 0;
 }
}

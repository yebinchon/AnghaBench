
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ sldns_pkt_section ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_SECTION_ANSWER ;

__attribute__((used)) static int
rrset_belongs_in_reply(sldns_pkt_section s, uint16_t rrtype, uint16_t qtype,
 int dnssec)
{
 if(dnssec)
  return 1;

 if(s == LDNS_SECTION_ANSWER) {
  if(qtype == LDNS_RR_TYPE_ANY || qtype == rrtype)
   return 1;
 }

 switch(rrtype) {
  case 128:
  case 134:
  case 130:
  case 135:
  case 129:
  case 133:
  case 136:
  case 132:
  case 131:
   return 0;
 }
 return 1;
}

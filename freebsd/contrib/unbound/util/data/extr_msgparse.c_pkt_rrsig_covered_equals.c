
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int sldns_buffer ;


 scalar_t__ pkt_rrsig_covered (int *,int *,scalar_t__*) ;

__attribute__((used)) static int
pkt_rrsig_covered_equals(sldns_buffer* pkt, uint8_t* here, uint16_t type)
{
 uint16_t t;
 if(pkt_rrsig_covered(pkt, here, &t) && t == type)
  return 1;
 return 0;
}

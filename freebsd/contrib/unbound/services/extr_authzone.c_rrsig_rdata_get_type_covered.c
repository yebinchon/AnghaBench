
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int sldns_read_uint16 (int *) ;

__attribute__((used)) static uint16_t
rrsig_rdata_get_type_covered(uint8_t* rdata, size_t rdatalen)
{
 if(rdatalen < 4)
  return 0;
 return sldns_read_uint16(rdata+2);
}

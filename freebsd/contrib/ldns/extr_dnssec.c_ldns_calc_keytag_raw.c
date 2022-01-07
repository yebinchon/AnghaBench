
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int const LDNS_RSAMD5 ;
 int memmove (scalar_t__*,int const*,int) ;
 scalar_t__ ntohs (scalar_t__) ;

uint16_t ldns_calc_keytag_raw(const uint8_t* key, size_t keysize)
{
 unsigned int i;
 uint32_t ac32;
 uint16_t ac16;

 if(keysize < 4) {
  return 0;
 }

 if (key[3] == LDNS_RSAMD5) {
  ac16 = 0;
  if (keysize > 4) {
   memmove(&ac16, key + keysize - 3, 2);
  }
  ac16 = ntohs(ac16);
  return (uint16_t) ac16;
 } else {
  ac32 = 0;
  for (i = 0; (size_t)i < keysize; ++i) {
   ac32 += (i & 1) ? key[i] : key[i] << 8;
  }
  ac32 += (ac32 >> 16) & 0xFFFF;
  return (uint16_t) (ac32 & 0xFFFF);
 }
}

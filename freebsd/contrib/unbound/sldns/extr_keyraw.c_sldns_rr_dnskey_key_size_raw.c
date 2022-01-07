
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned char uint16_t ;
typedef int sldns_algorithm ;
 int memmove (unsigned char*,unsigned char const*,int) ;
 unsigned char ntohs (unsigned char) ;

size_t
sldns_rr_dnskey_key_size_raw(const unsigned char* keydata,
 const size_t len, int alg)
{

 uint8_t t;


 uint16_t exp;
 uint16_t int16;

 switch ((sldns_algorithm)alg) {
 case 139:
 case 138:
  if (len > 0) {
   t = keydata[0];
   return (64 + t*8)*8;
  } else {
   return 0;
  }
  break;
 case 132:
 case 131:
 case 130:




  if (len > 0) {
   if (keydata[0] == 0) {

    if (len > 3) {
     memmove(&int16, keydata + 1, 2);
     exp = ntohs(int16);
     return (len - exp - 3)*8;
    } else {
     return 0;
    }
   } else {
    exp = keydata[0];
    return (len-exp-1)*8;
   }
  } else {
   return 0;
  }
  break;
 default:
  return 0;
 }
}

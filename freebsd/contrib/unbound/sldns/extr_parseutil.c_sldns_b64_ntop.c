
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t sldns_b64_ntop_calculate_size (size_t) ;

int sldns_b64_ntop(uint8_t const *src, size_t srclength,
 char *target, size_t targsize)
{
 const char* b64 =
 "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
 const char pad64 = '=';
 size_t i = 0, o = 0;
 if(targsize < sldns_b64_ntop_calculate_size(srclength))
  return -1;

 while(i+3 <= srclength) {
  if(o+4 > targsize) return -1;
  target[o] = b64[src[i] >> 2];
  target[o+1] = b64[ ((src[i]&0x03)<<4) | (src[i+1]>>4) ];
  target[o+2] = b64[ ((src[i+1]&0x0f)<<2) | (src[i+2]>>6) ];
  target[o+3] = b64[ (src[i+2]&0x3f) ];
  i += 3;
  o += 4;
 }

 switch(srclength - i) {
 case 2:

  target[o] = b64[src[i] >> 2];
  target[o+1] = b64[ ((src[i]&0x03)<<4) | (src[i+1]>>4) ];
  target[o+2] = b64[ ((src[i+1]&0x0f)<<2) ];
  target[o+3] = pad64;

  o += 4;
  break;
 case 1:

  target[o] = b64[src[i] >> 2];
  target[o+1] = b64[ ((src[i]&0x03)<<4) ];
  target[o+2] = pad64;
  target[o+3] = pad64;

  o += 4;
  break;
 case 0:
 default:

  break;
 }

 if(o+1 > targsize) return -1;
 target[o] = 0;
 return (int)o;
}

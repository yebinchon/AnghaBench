
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int memmove (scalar_t__*,scalar_t__*,size_t) ;
 int sldns_b32_ntop_extended_hex (scalar_t__*,size_t,char*,size_t) ;

size_t nsec3_hash_to_b32(uint8_t* hash, size_t hashlen, uint8_t* zone,
 size_t zonelen, uint8_t* buf, size_t max)
{

 int ret;
 if(max < hashlen*2+1)
  return 0;
 ret = sldns_b32_ntop_extended_hex(hash, hashlen, (char*)buf+1, max-1);
 if(ret < 1)
  return 0;
 buf[0] = (uint8_t)ret;
 ret++;
 if(max - ret < zonelen)
  return 0;
 memmove(buf+ret, zone, zonelen);
 return zonelen+(size_t)ret;
}

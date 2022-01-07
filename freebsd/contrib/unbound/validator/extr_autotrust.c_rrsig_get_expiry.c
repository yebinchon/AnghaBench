
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int sldns_read_uint32 (int *) ;

__attribute__((used)) static int32_t
rrsig_get_expiry(uint8_t* d, size_t len)
{

 if(len < 2+8+4)
  return 0;
 return sldns_read_uint32(d+2+8);
}

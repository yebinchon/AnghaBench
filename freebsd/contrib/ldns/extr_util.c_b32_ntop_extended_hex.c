
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ldns_b32_ntop_base (int const*,size_t,char*,size_t,int,int) ;

int
b32_ntop_extended_hex(const uint8_t* src, size_t src_sz,
  char* dst, size_t dst_sz)
{
 return ldns_b32_ntop_base(src, src_sz, dst, dst_sz, 1, 1);
}

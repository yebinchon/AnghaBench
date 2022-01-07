
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ldns_b32_pton_base (char const*,size_t,int *,size_t,int,int) ;

int
ldns_b32_pton(const char* src, size_t src_sz, uint8_t* dst, size_t dst_sz)
{
 return ldns_b32_pton_base(src, src_sz, dst, dst_sz, 0, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int wind_ucs4utf8 (int const*,size_t,int *,size_t*) ;

int
wind_ucs4utf8_length(const uint32_t *in, size_t in_len, size_t *out_len)
{
    return wind_ucs4utf8(in, in_len, ((void*)0), out_len);
}

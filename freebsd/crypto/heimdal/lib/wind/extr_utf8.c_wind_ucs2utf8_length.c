
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int wind_ucs2utf8 (int const*,size_t,int *,size_t*) ;

int
wind_ucs2utf8_length(const uint16_t *in, size_t in_len, size_t *out_len)
{
    return wind_ucs2utf8(in, in_len, ((void*)0), out_len);
}

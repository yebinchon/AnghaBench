
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wind_utf8ucs4 (char const*,int *,size_t*) ;

int
wind_utf8ucs4_length(const char *in, size_t *out_len)
{
    return wind_utf8ucs4(in, ((void*)0), out_len);
}

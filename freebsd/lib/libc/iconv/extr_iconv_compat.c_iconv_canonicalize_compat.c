
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* __bsd_iconv_canonicalize (char const*) ;

const char *
iconv_canonicalize_compat(const char *a)
{
 return __bsd_iconv_canonicalize(a);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _citrus_iconv_canonicalize (char const*) ;

__inline const char *
__bsd_iconv_canonicalize(const char *name)
{

 return (_citrus_iconv_canonicalize(name));
}

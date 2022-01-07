
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void __bsd_iconv_set_relocation_prefix (char const*,char const*) ;

void
iconv_set_relocation_prefix(const char *a, const char *b)
{
 return __bsd_iconv_set_relocation_prefix(a, b);
}

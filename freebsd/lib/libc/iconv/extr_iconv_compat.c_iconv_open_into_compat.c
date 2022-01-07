
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_allocation_t ;


 int __bsd_iconv_open_into (char const*,char const*,int *) ;

int
iconv_open_into_compat(const char *a, const char *b, iconv_allocation_t *c)
{
 return __bsd_iconv_open_into(a, b, c);
}

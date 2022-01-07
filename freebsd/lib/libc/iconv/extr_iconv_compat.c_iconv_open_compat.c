
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int __bsd_iconv_open (char const*,char const*) ;

iconv_t
iconv_open_compat(const char *a, const char *b)
{
 return __bsd_iconv_open(a, b);
}

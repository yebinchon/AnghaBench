
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int __bsd___iconv_open (char const*,char const*,int *) ;

iconv_t
__bsd_iconv_open(const char *out, const char *in)
{

 return (__bsd___iconv_open(out, in, ((void*)0)));
}

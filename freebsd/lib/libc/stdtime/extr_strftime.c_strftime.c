
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int __get_locale () ;
 size_t strftime_l (char*,size_t,char const*,struct tm const*,int ) ;

size_t
strftime(char * __restrict s, size_t maxsize, const char * __restrict format,
    const struct tm * __restrict t)
{
 return strftime_l(s, maxsize, format, t, __get_locale());
}

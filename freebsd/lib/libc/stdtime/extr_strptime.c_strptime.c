
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int __get_locale () ;
 char* strptime_l (char const*,char const*,struct tm*,int ) ;

char *
strptime(const char * __restrict buf, const char * __restrict fmt,
    struct tm * __restrict tm)
{
 return strptime_l(buf, fmt, tm, __get_locale());
}

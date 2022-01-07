
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 char* _strptime (char const*,char const*,struct tm*,int) ;

char *
strptime(const char *buf, const char *fmt, struct tm *tm)
{
 return(_strptime(buf, fmt, tm, 1));
}

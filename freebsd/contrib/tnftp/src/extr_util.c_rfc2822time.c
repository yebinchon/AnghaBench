
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int result ;


 int errx (int,char*) ;
 scalar_t__ strftime (char*,int,char*,struct tm const*) ;

const char *
rfc2822time(const struct tm *tm)
{
 static char result[50];

 if (strftime(result, sizeof(result),
     "%a, %d %b %Y %H:%M:%S %z\n", tm) == 0)
  errx(1, "Can't convert RFC2822 time: buffer too small");
 return result;
}

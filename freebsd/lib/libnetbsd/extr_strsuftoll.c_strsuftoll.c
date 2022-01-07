
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;


 int errx (int,char*,char*) ;
 long long strsuftollx (char const*,char const*,long long,long long,char*,int) ;

long long
strsuftoll(const char *desc, const char *val,
    long long min, long long max)
{
 long long result;
 char errbuf[100];

 result = strsuftollx(desc, val, min, max, errbuf, sizeof(errbuf));
 if (*errbuf != '\0')
  errx(1, "%s", errbuf);
 return (result);
}

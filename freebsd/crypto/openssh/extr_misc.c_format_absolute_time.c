
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;


 scalar_t__ INT_MAX ;
 int localtime_r (scalar_t__*,struct tm*) ;
 int strftime (char*,size_t,char*,struct tm*) ;

void
format_absolute_time(uint64_t t, char *buf, size_t len)
{
 time_t tt = t > INT_MAX ? INT_MAX : t;
 struct tm tm;

 localtime_r(&tt, &tm);
 strftime(buf, len, "%Y-%m-%dT%H:%M:%S", &tm);
}

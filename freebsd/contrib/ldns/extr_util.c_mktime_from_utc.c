
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int ldns_mktime_from_utc (struct tm const*) ;

time_t
mktime_from_utc(const struct tm *tm)
{
 return ldns_mktime_from_utc(tm);
}

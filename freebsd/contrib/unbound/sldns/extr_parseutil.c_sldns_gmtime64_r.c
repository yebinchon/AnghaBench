
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; int tm_min; int tm_hour; int tm_year; scalar_t__ tm_isdst; } ;
typedef int int64_t ;


 int LDNS_DIV (int ,int) ;
 scalar_t__ LDNS_MOD (int ,int) ;
 int sldns_mon_and_mday_from_year_and_yday (struct tm*) ;
 int sldns_wday_from_year_and_yday (struct tm*) ;
 int sldns_year_and_yday_from_days_since_epoch (int ,struct tm*) ;

__attribute__((used)) static struct tm *
sldns_gmtime64_r(int64_t clock, struct tm *result)
{
 result->tm_isdst = 0;
 result->tm_sec = (int) LDNS_MOD(clock, 60);
 clock = LDNS_DIV(clock, 60);
 result->tm_min = (int) LDNS_MOD(clock, 60);
 clock = LDNS_DIV(clock, 60);
 result->tm_hour = (int) LDNS_MOD(clock, 24);
 clock = LDNS_DIV(clock, 24);

 sldns_year_and_yday_from_days_since_epoch(clock, result);
 sldns_mon_and_mday_from_year_and_yday(result);
 sldns_wday_from_year_and_yday(result);
 result->tm_year -= 1900;

 return result;
}

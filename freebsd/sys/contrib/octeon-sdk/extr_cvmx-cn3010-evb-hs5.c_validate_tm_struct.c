
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; int tm_mon; int tm_year; } ;


 int TM_CHECK (int,char*) ;

__attribute__((used)) static int validate_tm_struct(struct tm * tms)
{
    int rc = 0;

    if (!tms)
 return -1;

    TM_CHECK(tms->tm_sec < 0 || tms->tm_sec > 60, "second");
    TM_CHECK(tms->tm_min < 0 || tms->tm_min > 59, "minute");
    TM_CHECK(tms->tm_hour < 0 || tms->tm_hour > 23, "hour");
    TM_CHECK(tms->tm_mday < 1 || tms->tm_mday > 31, "day");
    TM_CHECK(tms->tm_wday < 0 || tms->tm_wday > 6, "day of week");
    TM_CHECK(tms->tm_mon < 0 || tms->tm_mon > 11, "month");
    TM_CHECK(tms->tm_year < 0 || tms->tm_year > 200,"year");

    return rc;
}

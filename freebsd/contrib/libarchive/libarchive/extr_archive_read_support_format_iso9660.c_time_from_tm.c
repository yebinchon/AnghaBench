
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_yday; int tm_year; } ;


 scalar_t__ _mkgmtime64 (struct tm*) ;
 scalar_t__ mktime (struct tm*) ;
 scalar_t__ timegm (struct tm*) ;

__attribute__((used)) static time_t
time_from_tm(struct tm *t)
{
        if (mktime(t) == (time_t)-1)
                return ((time_t)-1);

        return (t->tm_sec
            + t->tm_min * 60
            + t->tm_hour * 3600
            + t->tm_yday * 86400
            + (t->tm_year - 70) * 31536000
            + ((t->tm_year - 69) / 4) * 86400
            - ((t->tm_year - 1) / 100) * 86400
            + ((t->tm_year + 299) / 400) * 86400);

}

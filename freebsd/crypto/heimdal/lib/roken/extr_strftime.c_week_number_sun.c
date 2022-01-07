
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_yday; int tm_wday; } ;



__attribute__((used)) static int
week_number_sun (const struct tm *tm)
{
    return (tm->tm_yday + 7 - (tm->tm_yday % 7 - tm->tm_wday + 7) % 7) / 7;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; int tm_yday; } ;



__attribute__((used)) static int
week_number_mon (const struct tm *tm)
{
    int wday = (tm->tm_wday + 6) % 7;

    return (tm->tm_yday + 7 - (tm->tm_yday % 7 - wday + 7) % 7) / 7;
}

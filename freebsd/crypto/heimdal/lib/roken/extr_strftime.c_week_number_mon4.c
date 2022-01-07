
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; int tm_yday; } ;



__attribute__((used)) static int
week_number_mon4 (const struct tm *tm)
{
    int wday = (tm->tm_wday + 6) % 7;
    int w1day = (wday - tm->tm_yday % 7 + 7) % 7;
    int ret;

    ret = (tm->tm_yday + w1day) / 7;
    if (w1day >= 4)
 --ret;
    if (ret == -1)
 ret = 53;
    else
 ++ret;
    return ret;
}

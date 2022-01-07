
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; int tm_yday; int tm_wday; } ;


 scalar_t__ leap_year (int) ;

__attribute__((used)) static void determine_days(struct tm *tm)
{
    static const int ydays[12] = {
        0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
    };
    int y = tm->tm_year + 1900;
    int m = tm->tm_mon;
    int d = tm->tm_mday;
    int c;

    tm->tm_yday = ydays[m] + d - 1;
    if (m >= 2) {

        tm->tm_yday += leap_year(y);
        m += 2;
    } else {

        m += 14;
        y--;
    }
    c = y / 100;
    y %= 100;

    tm->tm_wday = (d + (13 * m) / 5 + y + y / 4 + c / 4 + 5 * c + 6) % 7;
}

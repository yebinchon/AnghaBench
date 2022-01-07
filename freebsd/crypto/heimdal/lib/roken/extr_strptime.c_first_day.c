
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_leap_year (int) ;

__attribute__((used)) static int
first_day (int year)
{
    int ret = 4;

    for (; year > 1970; --year)
 ret = (ret + (is_leap_year (year) ? 366 : 365)) % 7;
    return ret;
}

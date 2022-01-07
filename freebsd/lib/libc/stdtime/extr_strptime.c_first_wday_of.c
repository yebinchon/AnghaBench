
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isleap (int) ;

__attribute__((used)) static int
first_wday_of(int year)
{
 return (((2 * (3 - (year / 100) % 4)) + (year % 100) +
  ((year % 100) / 4) + (isleap(year) ? 6 : 0) + 1) % 7);
}

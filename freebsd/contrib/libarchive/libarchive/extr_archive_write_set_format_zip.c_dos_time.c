
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 struct tm* localtime (int const*) ;

__attribute__((used)) static unsigned int
dos_time(const time_t unix_time)
{
 struct tm *t;
 unsigned int dt;



 t = localtime(&unix_time);


 if (t->tm_year < 1980 - 1900)

  dt = 0x00210000U;
 else if (t->tm_year > 2107 - 1900)

  dt = 0xff9fbf7dU;
 else {
  dt = 0;
  dt += ((t->tm_year - 80) & 0x7f) << 9;
  dt += ((t->tm_mon + 1) & 0x0f) << 5;
  dt += (t->tm_mday & 0x1f);
  dt <<= 16;
  dt += (t->tm_hour & 0x1f) << 11;
  dt += (t->tm_min & 0x3f) << 5;
  dt += (t->tm_sec & 0x3e) >> 1;
 }
 return dt;
}

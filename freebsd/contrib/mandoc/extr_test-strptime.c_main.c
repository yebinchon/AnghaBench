
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; scalar_t__ tm_mon; int tm_mday; } ;


 char const* strptime (char const*,char*,struct tm*) ;

int
main(void)
{
 struct tm tm;
 const char input[] = "2014-01-04";
 return ! (strptime(input, "%Y-%m-%d", &tm) == input + 10 &&
     tm.tm_year == 114 && tm.tm_mon == 0 && tm.tm_mday == 4);
}

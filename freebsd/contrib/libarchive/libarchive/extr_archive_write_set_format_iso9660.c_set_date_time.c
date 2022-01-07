
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 int get_gmoffset (struct tm*) ;
 int get_tmfromtime (struct tm*,int *) ;
 int set_digit (unsigned char*,int,scalar_t__) ;
 int set_num_712 (unsigned char*,char) ;

__attribute__((used)) static void
set_date_time(unsigned char *p, time_t t)
{
 struct tm tm;

 get_tmfromtime(&tm, &t);
 set_digit(p, 4, tm.tm_year + 1900);
 set_digit(p+4, 2, tm.tm_mon + 1);
 set_digit(p+6, 2, tm.tm_mday);
 set_digit(p+8, 2, tm.tm_hour);
 set_digit(p+10, 2, tm.tm_min);
 set_digit(p+12, 2, tm.tm_sec);
 set_digit(p+14, 2, 0);
 set_num_712(p+16, (char)(get_gmoffset(&tm)/(60*15)));
}

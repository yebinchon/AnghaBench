
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ time_t ;
struct calendar {int year; int month; int monthday; int minute; int hour; } ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 scalar_t__ ntpcal_ntp_to_date (struct calendar*,int ,int *) ;
 int snprintf (char*,int ,char*,int,...) ;

char * fstostr(
 time_t ntp_stamp
 )
{
 char * buf;
 struct calendar tm;

 LIB_GETBUF(buf);
 if (ntpcal_ntp_to_date(&tm, (u_int32)ntp_stamp, ((void*)0)) < 0)
  snprintf(buf, LIB_BUFLENGTH, "ntpcal_ntp_to_date: %ld: range error",
    (long)ntp_stamp);
 else
  snprintf(buf, LIB_BUFLENGTH, "%04d%02d%02d%02d%02d",
    tm.year, tm.month, tm.monthday,
    tm.hour, tm.minute);
 return buf;
}

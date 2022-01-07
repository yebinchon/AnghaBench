
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hi; } ;
struct TYPE_6__ {TYPE_1__ d_s; } ;
typedef TYPE_2__ vint64 ;
struct calendar {int year; int month; int monthday; int hour; int minute; int second; } ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 scalar_t__ ntpcal_ntp64_to_date (struct calendar*,TYPE_2__ const*) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static const char *
lstostr(
 const vint64 * ts)
{
 char * buf;
 struct calendar tm;

 LIB_GETBUF(buf);

 if ( ! (ts->d_s.hi >= 0 && ntpcal_ntp64_to_date(&tm, ts) >= 0))
  snprintf(buf, LIB_BUFLENGTH, "%s", "9999-12-31T23:59:59Z");
 else
  snprintf(buf, LIB_BUFLENGTH, "%04d-%02d-%02dT%02d:%02d:%02dZ",
   tm.year, tm.month, tm.monthday,
   tm.hour, tm.minute, tm.second);

 return buf;
}

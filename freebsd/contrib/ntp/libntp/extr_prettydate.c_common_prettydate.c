
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vint64 ;
typedef int u_long ;
typedef scalar_t__ u_int32 ;
typedef unsigned int u_int ;
struct tm {size_t tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;
struct calendar {size_t weekday; int month; int second; int minute; int hour; scalar_t__ year; int monthday; } ;
struct TYPE_3__ {scalar_t__ l_ui; scalar_t__ l_uf; } ;
typedef TYPE_1__ l_fp ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int * daynames ;
 struct tm* get_struct_tm (int *,int) ;
 int * months ;
 int ntpcal_ntp_to_time (scalar_t__,int *) ;
 int ntpcal_time_to_date (struct calendar*,int *) ;
 int snprintf (char*,int ,char const*,int ,int ,int ,int ,int ,scalar_t__,int ,int ,int ,unsigned int) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static char *
common_prettydate(
 l_fp *ts,
 int local
 )
{
 static const char pfmt0[] =
     "%08lx.%08lx  %s, %s %2d %4d %2d:%02d:%02d.%03u";
 static const char pfmt1[] =
     "%08lx.%08lx [%s, %s %2d %4d %2d:%02d:%02d.%03u UTC]";

 char *bp;
 struct tm *tm;
 u_int msec;
 u_int32 ntps;
 vint64 sec;

 LIB_GETBUF(bp);

 if (ts->l_ui == 0 && ts->l_uf == 0) {
  strlcpy (bp, "(no time)", LIB_BUFLENGTH);
  return (bp);
 }


 ntps = ts->l_ui;
 msec = ts->l_uf / 4294967;
 if (msec >= 1000u) {
  msec -= 1000u;
  ntps++;
 }
 sec = ntpcal_ntp_to_time(ntps, ((void*)0));
 tm = get_struct_tm(&sec, local);
 if (!tm) {




  struct calendar jd;
  ntpcal_time_to_date(&jd, &sec);
  snprintf(bp, LIB_BUFLENGTH, local ? pfmt1 : pfmt0,
    (u_long)ts->l_ui, (u_long)ts->l_uf,
    daynames[jd.weekday], months[jd.month-1],
    jd.monthday, jd.year, jd.hour,
    jd.minute, jd.second, msec);
 } else
  snprintf(bp, LIB_BUFLENGTH, pfmt0,
    (u_long)ts->l_ui, (u_long)ts->l_uf,
    daynames[tm->tm_wday], months[tm->tm_mon],
    tm->tm_mday, 1900 + tm->tm_year, tm->tm_hour,
    tm->tm_min, tm->tm_sec, msec);
 return bp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int u_short ;
typedef int u_int ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct calendar {scalar_t__ second; scalar_t__ minute; scalar_t__ hour; scalar_t__ monthday; scalar_t__ month; int year; } ;
typedef int ntpcal_split ;


 int DAY_UNIX_STARTS ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int ntpcal_daysplit (int *) ;
 int ntpcal_daysplit_to_date (struct calendar*,int *,int ) ;
 int snprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int time_to_vint64 (int *) ;

__attribute__((used)) static const char *
tv_fmt_libbuf(
 const struct timeval * ptv
 )
{
 char * retv;
 vint64 secs;
 ntpcal_split dds;
 struct calendar jd;

 secs = time_to_vint64(&ptv->tv_sec);
 dds = ntpcal_daysplit(&secs);
 ntpcal_daysplit_to_date(&jd, &dds, DAY_UNIX_STARTS);
 LIB_GETBUF(retv);
 snprintf(retv, LIB_BUFLENGTH,
   "%04hu-%02hu-%02hu/%02hu:%02hu:%02hu.%06u",
   jd.year, (u_short)jd.month, (u_short)jd.monthday,
   (u_short)jd.hour, (u_short)jd.minute, (u_short)jd.second,
   (u_int)ptv->tv_usec);
 return retv;
}

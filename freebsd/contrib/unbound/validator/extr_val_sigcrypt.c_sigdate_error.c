
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ VERB_QUERY ;
 scalar_t__ gmtime_r (scalar_t__*,struct tm*) ;
 int log_info (char*,char const*,...) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
sigdate_error(const char* str, int32_t expi, int32_t incep, int32_t now)
{
 struct tm tm;
 char expi_buf[16];
 char incep_buf[16];
 char now_buf[16];
 time_t te, ti, tn;

 if(verbosity < VERB_QUERY)
  return;
 te = (time_t)expi;
 ti = (time_t)incep;
 tn = (time_t)now;
 memset(&tm, 0, sizeof(tm));
 if(gmtime_r(&te, &tm) && strftime(expi_buf, 15, "%Y%m%d%H%M%S", &tm)
  &&gmtime_r(&ti, &tm) && strftime(incep_buf, 15, "%Y%m%d%H%M%S", &tm)
  &&gmtime_r(&tn, &tm) && strftime(now_buf, 15, "%Y%m%d%H%M%S", &tm)) {
  log_info("%s expi=%s incep=%s now=%s", str, expi_buf,
   incep_buf, now_buf);
 } else
  log_info("%s expi=%u incep=%u now=%u", str, (unsigned)expi,
   (unsigned)incep, (unsigned)now);
}

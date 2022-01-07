
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 int LOG_ERR ;
 int LOG_WARNING ;
 int leapfile_name ;
 int leapsec_daystolive (int ,int const*) ;
 int msyslog (int ,char*,char const* const,int ,...) ;

__attribute__((used)) static void
check_leap_expiration(
 int is_daily_check,
 uint32_t ntptime ,
 const time_t *systime
 )
{
 static const char * const logPrefix = "leapsecond file";
 int rc;





 rc = leapsec_daystolive(ntptime, systime);
 if (rc == 0) {
  msyslog(LOG_WARNING,
   "%s ('%s'): will expire in less than one day",
   logPrefix, leapfile_name);
 } else if (is_daily_check && rc < 28) {
  if (rc < 0)
   msyslog(LOG_ERR,
    "%s ('%s'): expired less than %d day%s ago",
    logPrefix, leapfile_name, -rc, (rc == -1 ? "" : "s"));
  else
   msyslog(LOG_WARNING,
    "%s ('%s'): will expire in less than %d days",
    logPrefix, leapfile_name, 1+rc);
 }
}

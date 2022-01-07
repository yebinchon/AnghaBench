
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int errbuf ;


 int LOG_ERR ;
 scalar_t__ MAX_UNEXPECTED_ERRORS ;
 int msyslog (int ,char*,...) ;
 scalar_t__ unexpected_error_cnt ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
library_unexpected_error(
 const char *file,
 int line,
 const char *format,
 va_list args
 )
{
 char errbuf[256];

 if (unexpected_error_cnt >= MAX_UNEXPECTED_ERRORS)
  return;

 msyslog(LOG_ERR, "%s:%d: unexpected error:", file, line);
 vsnprintf(errbuf, sizeof(errbuf), format, args);
 msyslog(LOG_ERR, "%s", errbuf);

 if (++unexpected_error_cnt == MAX_UNEXPECTED_ERRORS)
  msyslog(LOG_ERR, "Too many errors.  Shutting up.");

}

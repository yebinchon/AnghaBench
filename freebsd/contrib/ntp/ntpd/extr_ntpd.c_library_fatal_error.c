
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int errbuf ;


 int DebugBreak () ;
 int LOG_ERR ;
 int abort () ;
 scalar_t__ debug ;
 int isc_error_setfatal (int *) ;
 int msyslog (int ,char*,...) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
library_fatal_error(
 const char *file,
 int line,
 const char *format,
 va_list args
 )
{
 char errbuf[256];

 isc_error_setfatal(((void*)0));

 msyslog(LOG_ERR, "%s:%d: fatal error:", file, line);
 vsnprintf(errbuf, sizeof(errbuf), format, args);
 msyslog(LOG_ERR, "%s", errbuf);
 msyslog(LOG_ERR, "exiting (due to fatal error in library)");






 abort();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int EVENT_LOG_DEBUG ;
 int event_debug_get_logging_mask_ () ;
 int event_log (int,char*) ;
 int evutil_snprintf (char*,int,char*,char const*) ;
 int evutil_vsnprintf (char*,int,char const*,int ) ;
 size_t strlen (char*) ;

void
event_logv_(int severity, const char *errstr, const char *fmt, va_list ap)
{
 char buf[1024];
 size_t len;

 if (severity == EVENT_LOG_DEBUG && !event_debug_get_logging_mask_())
  return;

 if (fmt != ((void*)0))
  evutil_vsnprintf(buf, sizeof(buf), fmt, ap);
 else
  buf[0] = '\0';

 if (errstr) {
  len = strlen(buf);
  if (len < sizeof(buf) - 3) {
   evutil_snprintf(buf + len, sizeof(buf) - len, ": %s", errstr);
  }
 }

 event_log(severity, buf);
}

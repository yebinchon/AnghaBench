
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int event_log (int,char*) ;
 int event_snprintf (char*,int,char*,int ) ;
 int event_vsnprintf (char*,int,char const*,int ) ;
 int strerror (int) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
_warn_helper(int severity, int log_errno, const char *fmt, va_list ap)
{
 char buf[1024];
 size_t len;

 if (fmt != ((void*)0))
  event_vsnprintf(buf, sizeof(buf), fmt, ap);
 else
  buf[0] = '\0';

 if (log_errno >= 0) {
  len = strlen(buf);
  if (len < sizeof(buf) - 3) {
   event_snprintf(buf + len, sizeof(buf) - len, ": %s",
       strerror(log_errno));
  }
 }

 event_log(severity, buf);
}

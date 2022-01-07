
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int log ;
typedef int FILE ;
 scalar_t__ PJDLOG_INITIALIZED ;


 int abort () ;
 int assert (int) ;
 int errno ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int pjdlog_debug_level ;
 scalar_t__ pjdlog_initialized ;
 char* pjdlog_level_string (int) ;
 int pjdlog_mode ;
 char* pjdlog_prefix ;
 int snprintf (char*,int,char*,char*) ;
 int * stderr ;
 int * stdout ;
 char* strerror (int) ;
 int syslog (int,char*,char*) ;
 int vfprintf (int *,char const*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
pjdlogv_common(int loglevel, int debuglevel, int error, const char *fmt,
    va_list ap)
{
 int saved_errno;

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);
 assert(loglevel == 134 || loglevel == 137 ||
     loglevel == 136 || loglevel == 133 ||
     loglevel == 130 || loglevel == 131 ||
     loglevel == 132 || loglevel == 135);
 assert(loglevel != 135 || debuglevel > 0);
 assert(error >= -1);


 if (loglevel == 135 && debuglevel > pjdlog_debug_level)
  return;

 saved_errno = errno;

 switch (pjdlog_mode) {
 case 129:
     {
  FILE *out;




  switch (loglevel) {
  case 134:
  case 137:
  case 136:
  case 133:
  case 130:
   out = stderr;
   break;
  case 131:
  case 132:
  case 135:
   out = stdout;
   break;
  default:
   assert(!"Invalid loglevel.");
   abort();
  }

  fprintf(out, "[%s]", pjdlog_level_string(loglevel));

  if (loglevel == 135)
   fprintf(out, "[%d]", debuglevel);
  fprintf(out, " %s", pjdlog_prefix);
  vfprintf(out, fmt, ap);
  if (error != -1)
   fprintf(out, ": %s.", strerror(error));
  fprintf(out, "\n");
  fflush(out);
  break;
     }
 case 128:
     {
  char log[1024];
  int len;

  len = snprintf(log, sizeof(log), "%s", pjdlog_prefix);
  if ((size_t)len < sizeof(log))
   len += vsnprintf(log + len, sizeof(log) - len, fmt, ap);
  if (error != -1 && (size_t)len < sizeof(log)) {
   (void)snprintf(log + len, sizeof(log) - len, ": %s.",
       strerror(error));
  }
  syslog(loglevel, "%s", log);
  break;
     }
 default:
  assert(!"Invalid mode.");
 }

 errno = saved_errno;
}

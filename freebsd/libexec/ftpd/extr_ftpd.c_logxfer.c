
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;
typedef int buf ;


 int LOG_NOTICE ;
 int MAXPATHLEN ;
 char* ctime (scalar_t__*) ;
 char* ident ;
 int * realpath (char*,char*) ;
 char* remotehost ;
 int snprintf (char*,int,char*,char*,char*,char*,char*,int ,long) ;
 scalar_t__ statfd ;
 int strlen (char*) ;
 int syslog (int ,char*,char*) ;
 int time (scalar_t__*) ;
 int write (scalar_t__,char*,int ) ;

__attribute__((used)) static void
logxfer(char *name, off_t size, time_t start)
{
 char buf[MAXPATHLEN + 1024];
 char path[MAXPATHLEN + 1];
 time_t now;

 if (statfd >= 0) {
  time(&now);
  if (realpath(name, path) == ((void*)0)) {
   syslog(LOG_NOTICE, "realpath failed on %s: %m", path);
   return;
  }
  snprintf(buf, sizeof(buf), "%.20s!%s!%s!%s!%jd!%ld\n",
   ctime(&now)+4, ident, remotehost,
   path, (intmax_t)size,
   (long)(now - start + (now == start)));
  write(statfd, buf, strlen(buf));
 }
}

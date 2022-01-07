
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wd ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int LOG_INFO ;
 int MAXPATHLEN ;
 int appendf (char**,char*,...) ;
 scalar_t__ dochroot ;
 int errno ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 scalar_t__ guest ;
 int logging ;
 int strcpy (char*,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static void
logcmd(char *cmd, char *file1, char *file2, off_t cnt)
{
 char *msg = ((void*)0);
 char wd[MAXPATHLEN + 1];

 if (logging <= 1)
  return;

 if (getcwd(wd, sizeof(wd) - 1) == ((void*)0))
  strcpy(wd, strerror(errno));

 appendf(&msg, "%s", cmd);
 if (file1)
  appendf(&msg, " %s", file1);
 if (file2)
  appendf(&msg, " %s", file2);
 if (cnt >= 0)
  appendf(&msg, " = %jd bytes", (intmax_t)cnt);
 appendf(&msg, " (wd: %s", wd);
 if (guest || dochroot)
  appendf(&msg, "; chrooted");
 appendf(&msg, ")");
 syslog(LOG_INFO, "%s", msg);
 free(msg);
}

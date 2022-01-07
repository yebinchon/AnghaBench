
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_host; int ut_user; int ut_type; } ;


 int USER_PROCESS ;
 int pututxline (struct utmpx*) ;
 int strncpy (int ,char const*,int) ;
 int ulog_fill (struct utmpx*,char const*) ;

void
ulog_login(const char *line, const char *user, const char *host)
{
 struct utmpx utx;

 ulog_fill(&utx, line);
 utx.ut_type = USER_PROCESS;
 strncpy(utx.ut_user, user, sizeof utx.ut_user);
 if (host != ((void*)0))
  strncpy(utx.ut_host, host, sizeof utx.ut_host);
 pututxline(&utx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_type; } ;


 int DEAD_PROCESS ;
 int pututxline (struct utmpx*) ;
 int ulog_fill (struct utmpx*,char const*) ;

void
ulog_logout(const char *line)
{
 struct utmpx utx;

 ulog_fill(&utx, line);
 utx.ut_type = DEAD_PROCESS;
 pututxline(&utx);
}

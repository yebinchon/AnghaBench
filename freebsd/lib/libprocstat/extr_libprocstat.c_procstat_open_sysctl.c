
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; } ;


 int PROCSTAT_SYSCTL ;
 struct procstat* calloc (int,int) ;
 int warn (char*) ;

struct procstat *
procstat_open_sysctl(void)
{
 struct procstat *procstat;

 procstat = calloc(1, sizeof(*procstat));
 if (procstat == ((void*)0)) {
  warn("malloc()");
  return (((void*)0));
 }
 procstat->type = PROCSTAT_SYSCTL;
 return (procstat);
}

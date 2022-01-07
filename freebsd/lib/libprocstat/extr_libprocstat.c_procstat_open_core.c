
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
struct procstat {struct procstat_core* core; int type; } ;


 int PROCSTAT_CORE ;
 struct procstat* calloc (int,int) ;
 int free (struct procstat*) ;
 struct procstat_core* procstat_core_open (char const*) ;
 int warn (char*) ;

struct procstat *
procstat_open_core(const char *filename)
{
 struct procstat *procstat;
 struct procstat_core *core;

 procstat = calloc(1, sizeof(*procstat));
 if (procstat == ((void*)0)) {
  warn("malloc()");
  return (((void*)0));
 }
 core = procstat_core_open(filename);
 if (core == ((void*)0)) {
  free(procstat);
  return (((void*)0));
 }
 procstat->type = PROCSTAT_CORE;
 procstat->core = core;
 return (procstat);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ftrace ;
 char* inittracename ;
 scalar_t__ new_tracelevel ;
 char* savetracename ;
 int set_tracefile (char*,int ,int ) ;
 int sigtrace_pat ;
 scalar_t__ tracelevel ;
 int tracelevel_msg (int ,int ) ;

void
set_tracelevel(void)
{
 if (new_tracelevel == tracelevel)
  return;




 if (new_tracelevel > tracelevel && ftrace == ((void*)0)) {
  if (savetracename[0] != '\0') {
   set_tracefile(savetracename,sigtrace_pat,0);
  } else if (inittracename[0] != '\0') {
    set_tracefile(inittracename,sigtrace_pat,0);
  } else {
   new_tracelevel = 0;
   return;
  }
 } else {
  tracelevel_msg(sigtrace_pat, 0);
 }
}

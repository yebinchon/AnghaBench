
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* to_pid_to_exec_file ) (int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,char*) ;
 int gdb_stdlog ;
 char* stub1 (int) ;

__attribute__((used)) static char *
debug_to_pid_to_exec_file (int pid)
{
  char *exec_file;

  exec_file = debug_target.to_pid_to_exec_file (pid);

  fprintf_unfiltered (gdb_stdlog, "target_pid_to_exec_file (%d) = %s\n",
        pid, exec_file);

  return exec_file;
}

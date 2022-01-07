
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwProcessId; } ;


 TYPE_1__ current_event ;
 int sprintf (char*,char*,unsigned int,...) ;

char *
cygwin_pid_to_str (int pid)
{
  static char buf[80];
  if (pid == current_event.dwProcessId)
    sprintf (buf, "process %d", pid);
  else
    sprintf (buf, "thread %d.0x%x", (unsigned) current_event.dwProcessId, pid);
  return buf;
}

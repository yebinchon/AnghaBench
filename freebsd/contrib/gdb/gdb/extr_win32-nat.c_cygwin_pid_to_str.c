
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int dwProcessId; } ;
typedef int DWORD ;


 int PIDGET (int ) ;
 TYPE_1__ current_event ;
 int sprintf (char*,char*,int,...) ;

char *
cygwin_pid_to_str (ptid_t ptid)
{
  static char buf[80];
  int pid = PIDGET (ptid);

  if ((DWORD) pid == current_event.dwProcessId)
    sprintf (buf, "process %d", pid);
  else
    sprintf (buf, "thread %ld.0x%x", current_event.dwProcessId, pid);
  return buf;
}

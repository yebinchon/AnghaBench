
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* dtrace_id_t ;
struct TYPE_2__ {void* sy_return; void* sy_entry; int * sy_systrace_args_func; } ;


 TYPE_1__* SYSENT ;
 scalar_t__ SYSTRACE_ISENTRY (uintptr_t) ;
 int SYSTRACE_SYSNUM (uintptr_t) ;
 int * systrace_args ;
 int systrace_enabled ;
 int systrace_enabled_count ;

__attribute__((used)) static void
systrace_enable(void *arg, dtrace_id_t id, void *parg)
{
 int sysnum = SYSTRACE_SYSNUM((uintptr_t)parg);

 if (SYSENT[sysnum].sy_systrace_args_func == ((void*)0))
  SYSENT[sysnum].sy_systrace_args_func = systrace_args;

 if (SYSTRACE_ISENTRY((uintptr_t)parg))
  SYSENT[sysnum].sy_entry = id;
 else
  SYSENT[sysnum].sy_return = id;
 systrace_enabled_count++;
 if (systrace_enabled_count == 1)
  systrace_enabled = 1;
}

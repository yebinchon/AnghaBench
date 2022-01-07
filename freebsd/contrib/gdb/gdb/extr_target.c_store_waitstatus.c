
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sig; int integer; } ;
struct target_waitstatus {TYPE_1__ value; int kind; } ;


 scalar_t__ CHILD_SPECIAL_WAITSTATUS (struct target_waitstatus*,int) ;
 int TARGET_WAITKIND_EXITED ;
 int TARGET_WAITKIND_SIGNALLED ;
 int TARGET_WAITKIND_STOPPED ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WTERMSIG (int) ;
 void* target_signal_from_host (int ) ;

void
store_waitstatus (struct target_waitstatus *ourstatus, int hoststatus)
{







  if (WIFEXITED (hoststatus))
    {
      ourstatus->kind = TARGET_WAITKIND_EXITED;
      ourstatus->value.integer = WEXITSTATUS (hoststatus);
    }
  else if (!WIFSTOPPED (hoststatus))
    {
      ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
      ourstatus->value.sig = target_signal_from_host (WTERMSIG (hoststatus));
    }
  else
    {
      ourstatus->kind = TARGET_WAITKIND_STOPPED;
      ourstatus->value.sig = target_signal_from_host (WSTOPSIG (hoststatus));
    }
}

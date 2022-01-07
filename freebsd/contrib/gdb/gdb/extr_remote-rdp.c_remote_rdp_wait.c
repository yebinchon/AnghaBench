
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sig; int integer; } ;
struct target_waitstatus {TYPE_1__ value; int kind; } ;
typedef int ptid_t ;
struct TYPE_4__ {int rdi_stopped_status; } ;





 int TARGET_SIGNAL_TRAP ;
 int TARGET_WAITKIND_EXITED ;
 int TARGET_WAITKIND_SIGNALLED ;
 int TARGET_WAITKIND_STOPPED ;
 TYPE_2__ ds ;
 int inferior_ptid ;

 int read_register (int ) ;
 int sigrc ;
 int target_signal_from_host (int ) ;

__attribute__((used)) static ptid_t
remote_rdp_wait (ptid_t ptid, struct target_waitstatus *status)
{
  switch (ds.rdi_stopped_status)
    {
    default:
    case 130:
    case 129:
      status->kind = TARGET_WAITKIND_EXITED;
      status->value.integer = read_register (0);
      break;
    case 131:
      status->kind = TARGET_WAITKIND_STOPPED;


      status->value.sig = TARGET_SIGNAL_TRAP;
      break;
    }

  return inferior_ptid;
}

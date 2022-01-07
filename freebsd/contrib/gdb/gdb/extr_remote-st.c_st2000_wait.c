
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig; scalar_t__ integer; } ;
struct target_waitstatus {TYPE_1__ value; int kind; } ;
typedef int ptid_t ;


 int TARGET_SIGNAL_TRAP ;
 int TARGET_WAITKIND_EXITED ;
 int TARGET_WAITKIND_STOPPED ;
 int expect_prompt (int ) ;
 int inferior_ptid ;
 int timeout ;

__attribute__((used)) static ptid_t
st2000_wait (ptid_t ptid, struct target_waitstatus *status)
{
  int old_timeout = timeout;

  status->kind = TARGET_WAITKIND_EXITED;
  status->value.integer = 0;

  timeout = 0;

  expect_prompt (0);

  status->kind = TARGET_WAITKIND_STOPPED;
  status->value.sig = TARGET_SIGNAL_TRAP;

  timeout = old_timeout;

  return inferior_ptid;
}

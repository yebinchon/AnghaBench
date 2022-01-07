
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig; } ;
struct target_waitstatus {TYPE_1__ value; int kind; } ;
typedef int ptid_t ;


 scalar_t__ RDIError_NoError ;
 int TARGET_WAITKIND_EXITED ;
 int TARGET_WAITKIND_STOPPED ;
 scalar_t__ execute_status ;
 int inferior_ptid ;
 int rdi_error_signal (scalar_t__) ;

__attribute__((used)) static ptid_t
arm_rdi_wait (ptid_t ptid, struct target_waitstatus *status)
{
  status->kind = (execute_status == RDIError_NoError ?
    TARGET_WAITKIND_EXITED : TARGET_WAITKIND_STOPPED);


  status->value.sig = rdi_error_signal (execute_status);

  return inferior_ptid;
}

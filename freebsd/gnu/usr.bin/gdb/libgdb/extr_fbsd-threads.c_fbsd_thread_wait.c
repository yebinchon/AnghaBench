
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int td_thrinfo_t ;
typedef int td_thrhandle_t ;
struct TYPE_3__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;
struct TYPE_4__ {int (* to_wait ) (int ,struct target_waitstatus*) ;} ;
typedef int CORE_ADDR ;


 int BUILD_LWP (long,scalar_t__) ;
 scalar_t__ GET_PID (int ) ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 int attach_thread (int ,int *,int *,int) ;
 int check_event (int ) ;
 TYPE_2__ child_ops ;
 int delete_thread (int ) ;
 int fbsd_thread_alive (int ) ;
 long get_current_lwp (scalar_t__) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 int stub1 (int ,struct target_waitstatus*) ;
 int thread_from_lwp (int ,int *,int *) ;

__attribute__((used)) static ptid_t
fbsd_thread_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  ptid_t ret;
  long lwp;
  CORE_ADDR stop_pc;
  td_thrhandle_t th;
  td_thrinfo_t ti;

  ret = child_ops.to_wait (ptid, ourstatus);
  if (GET_PID(ret) >= 0 && ourstatus->kind == TARGET_WAITKIND_STOPPED)
    {
      lwp = get_current_lwp (GET_PID(ret));
      ret = thread_from_lwp (BUILD_LWP(lwp, GET_PID(ret)),
         &th, &ti);
      if (!in_thread_list(ret)) {




        attach_thread(ret, &th, &ti, 1);
      }
      if (ourstatus->value.sig == TARGET_SIGNAL_TRAP)
        check_event(ret);





      if (!fbsd_thread_alive (inferior_ptid))
        {
          delete_thread (inferior_ptid);
          inferior_ptid = ret;
        }
    }

  return (ret);
}

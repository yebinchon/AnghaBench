
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int (* to_resume ) (int ,int,int) ;} ;


 int CALL_BASE (int ) ;
 scalar_t__ PIDGET (int ) ;
 TYPE_1__ base_ops ;
 int null_ptid ;
 int pid_to_ptid (int) ;
 scalar_t__ ptid_equal (int ,int ) ;
 int stub1 (int ,int,int) ;
 int thr_to_lwp (int ) ;

__attribute__((used)) static void
uw_thread_resume (ptid_t ptid, int step, enum target_signal signo)
{
  if (PIDGET (ptid) > 0)
    {
      ptid = thr_to_lwp (ptid);
      if (ptid_equal (ptid, null_ptid))
 ptid = pid_to_ptid (-1);
    }

  CALL_BASE (base_ops.to_resume (ptid, step, signo));
}

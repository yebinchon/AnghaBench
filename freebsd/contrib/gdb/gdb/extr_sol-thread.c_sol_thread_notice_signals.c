
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int (* to_notice_signals ) (int ) ;} ;


 int PIDGET (int ) ;
 int pid_to_ptid (int ) ;
 TYPE_1__ procfs_ops ;
 int stub1 (int ) ;

__attribute__((used)) static void
sol_thread_notice_signals (ptid_t ptid)
{
  procfs_ops.to_notice_signals (pid_to_ptid (PIDGET (ptid)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ptid; } ;
struct TYPE_3__ {int (* to_detach ) (char*,int) ;} ;


 int PIDGET (int ) ;
 int inferior_ptid ;
 TYPE_2__ main_ph ;
 int pid_to_ptid (int ) ;
 TYPE_1__ procfs_ops ;
 int sol_thread_ops ;
 int stub1 (char*,int) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
sol_thread_detach (char *args, int from_tty)
{
  inferior_ptid = pid_to_ptid (PIDGET (main_ph.ptid));
  unpush_target (&sol_thread_ops);
  procfs_ops.to_detach (args, from_tty);
}

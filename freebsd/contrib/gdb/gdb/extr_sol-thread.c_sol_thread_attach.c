
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_4__ {int ptid; } ;
struct TYPE_3__ {int (* to_attach ) (char*,int) ;} ;


 int PIDGET (int ) ;
 int SOLIB_ADD (char*,int,struct target_ops*,int ) ;
 int add_thread (int ) ;
 int auto_solib_add ;
 int inferior_ptid ;
 int lwp_to_thread (int ) ;
 TYPE_2__ main_ph ;
 int printf_filtered (char*) ;
 TYPE_1__ procfs_ops ;
 int push_target (int *) ;
 scalar_t__ sol_thread_active ;
 int sol_thread_ops ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
sol_thread_attach (char *args, int from_tty)
{
  procfs_ops.to_attach (args, from_tty);


  SOLIB_ADD ((char *) 0, from_tty, (struct target_ops *) 0, auto_solib_add);

  if (sol_thread_active)
    {
      printf_filtered ("sol-thread active.\n");
      main_ph.ptid = inferior_ptid;
      push_target (&sol_thread_ops);
      inferior_ptid = lwp_to_thread (inferior_ptid);
      if (PIDGET (inferior_ptid) == -1)
 inferior_ptid = main_ph.ptid;
      else
 add_thread (inferior_ptid);
    }

}

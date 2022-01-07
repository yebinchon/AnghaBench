
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ptid; } ;
struct TYPE_3__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 int PIDGET (int ) ;
 int add_thread (int ) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 int lwp_to_thread (int ) ;
 TYPE_2__ main_ph ;
 int null_ptid ;
 TYPE_1__ procfs_ops ;
 int ptid_equal (int ,int ) ;
 int push_target (int *) ;
 scalar_t__ sol_thread_active ;
 int sol_thread_ops ;
 int stub1 (char*,char*,char**) ;

__attribute__((used)) static void
sol_thread_create_inferior (char *exec_file, char *allargs, char **env)
{
  procfs_ops.to_create_inferior (exec_file, allargs, env);

  if (sol_thread_active && !ptid_equal (inferior_ptid, null_ptid))
    {
      main_ph.ptid = inferior_ptid;

      push_target (&sol_thread_ops);

      inferior_ptid = lwp_to_thread (inferior_ptid);
      if (PIDGET (inferior_ptid) == -1)
 inferior_ptid = main_ph.ptid;

      if (!in_thread_list (inferior_ptid))
 add_thread (inferior_ptid);
    }
}

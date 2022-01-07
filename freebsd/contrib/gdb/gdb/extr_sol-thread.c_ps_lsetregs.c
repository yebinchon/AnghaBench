
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef scalar_t__ prgregset_t ;
typedef int lwpid_t ;
typedef int gdb_ps_prochandle_t ;
typedef int gdb_gregset_t ;
struct TYPE_4__ {int (* to_store_registers ) (int) ;} ;
struct TYPE_3__ {int (* to_store_registers ) (int) ;} ;


 int BUILD_LWP (int ,int ) ;
 int PIDGET (int ) ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 TYPE_2__ orig_core_ops ;
 TYPE_1__ procfs_ops ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (int) ;
 int stub2 (int) ;
 int supply_gregset (int *) ;
 scalar_t__ target_has_execution ;

ps_err_e
ps_lsetregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,
      const prgregset_t gregset)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();

  inferior_ptid = BUILD_LWP (lwpid, PIDGET (inferior_ptid));

  supply_gregset ((gdb_gregset_t *) gregset);
  if (target_has_execution)
    procfs_ops.to_store_registers (-1);
  else
    orig_core_ops.to_store_registers (-1);

  do_cleanups (old_chain);

  return PS_OK;
}

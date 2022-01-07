
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef int prfpregset_t ;
typedef int lwpid_t ;
typedef int gdb_fpregset_t ;


 int BUILD_LWP (int ,int ) ;
 int PIDGET (int ) ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 struct cleanup* save_inferior_ptid () ;
 int supply_fpregset (int *) ;
 int target_store_registers (int) ;

ps_err_e
ps_lsetfpregs (struct ps_prochandle *ph, lwpid_t lwpid,
               const prfpregset_t *fpregset)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();
  inferior_ptid = BUILD_LWP (lwpid, PIDGET (inferior_ptid));
  supply_fpregset ((gdb_fpregset_t *) fpregset);
  target_store_registers (-1);
  do_cleanups (old_chain);
  return PS_OK;
}

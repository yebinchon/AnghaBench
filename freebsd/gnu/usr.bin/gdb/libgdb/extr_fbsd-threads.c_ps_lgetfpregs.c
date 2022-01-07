
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef int prfpregset_t ;
typedef int lwpid_t ;


 int BUILD_LWP (int ,int ) ;
 int PIDGET (int ) ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int fill_fpregset (int *,int) ;
 int inferior_ptid ;
 struct cleanup* save_inferior_ptid () ;
 int target_fetch_registers (int) ;

ps_err_e
ps_lgetfpregs (struct ps_prochandle *ph, lwpid_t lwpid, prfpregset_t *fpregset)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();
  inferior_ptid = BUILD_LWP (lwpid, PIDGET (inferior_ptid));
  target_fetch_registers (-1);
  fill_fpregset (fpregset, -1);
  do_cleanups (old_chain);
  return PS_OK;
}

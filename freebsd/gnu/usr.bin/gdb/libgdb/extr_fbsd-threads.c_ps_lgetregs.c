
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef int prgregset_t ;
typedef int lwpid_t ;


 int BUILD_LWP (int ,int ) ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int fill_gregset (int ,int) ;
 int inferior_ptid ;
 struct cleanup* save_inferior_ptid () ;
 int target_fetch_registers (int) ;

ps_err_e
ps_lgetregs (struct ps_prochandle *ph, lwpid_t lwpid, prgregset_t gregset)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();


  inferior_ptid = BUILD_LWP (0, lwpid);

  target_fetch_registers (-1);
  fill_gregset (gregset, -1);
  do_cleanups (old_chain);
  return PS_OK;
}

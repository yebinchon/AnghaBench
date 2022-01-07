
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int prgregset_t ;
typedef int prfpregset_t ;
typedef int gdb_gregset_t ;
typedef int gdb_fpregset_t ;
typedef int caddr_t ;
struct TYPE_4__ {int (* to_fetch_registers ) (int) ;} ;
struct TYPE_3__ {int (* to_fetch_registers ) (int) ;} ;


 scalar_t__ GET_THREAD (int ) ;
 scalar_t__ TD_NOFPREGS ;
 scalar_t__ TD_NOXREGS ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_PARTIALREG ;
 int alloca (int) ;
 int error (char*,...) ;
 int inferior_ptid ;
 int is_thread (int ) ;
 int main_ta ;
 TYPE_2__ orig_core_ops ;
 scalar_t__ p_td_ta_map_id2thr (int ,scalar_t__,int *) ;
 scalar_t__ p_td_thr_getfpregs (int *,int *) ;
 scalar_t__ p_td_thr_getgregs (int *,int ) ;
 TYPE_1__ procfs_ops ;
 int stub1 (int) ;
 int stub2 (int) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;
 scalar_t__ target_has_execution ;
 int td_err_string (scalar_t__) ;
 scalar_t__ td_thr_getxregs (int *,int ) ;
 scalar_t__ td_thr_getxregsize (int *,int*) ;

__attribute__((used)) static void
sol_thread_fetch_registers (int regno)
{
  thread_t thread;
  td_thrhandle_t thandle;
  td_err_e val;
  prgregset_t gregset;
  prfpregset_t fpregset;





  if (!is_thread (inferior_ptid))
    {
      if (target_has_execution)
 procfs_ops.to_fetch_registers (regno);
      else
 orig_core_ops.to_fetch_registers (regno);
      return;
    }



  thread = GET_THREAD (inferior_ptid);

  if (thread == 0)
    error ("sol_thread_fetch_registers:  thread == 0");

  val = p_td_ta_map_id2thr (main_ta, thread, &thandle);
  if (val != TD_OK)
    error ("sol_thread_fetch_registers: td_ta_map_id2thr: %s",
    td_err_string (val));



  val = p_td_thr_getgregs (&thandle, gregset);
  if (val != TD_OK
      && val != TD_PARTIALREG)
    error ("sol_thread_fetch_registers: td_thr_getgregs %s",
    td_err_string (val));






  val = p_td_thr_getfpregs (&thandle, &fpregset);
  if (val != TD_OK
      && val != TD_NOFPREGS)
    error ("sol_thread_fetch_registers: td_thr_getfpregs %s",
    td_err_string (val));





  supply_gregset ((gdb_gregset_t *) &gregset);
  supply_fpregset ((gdb_fpregset_t *) &fpregset);
}

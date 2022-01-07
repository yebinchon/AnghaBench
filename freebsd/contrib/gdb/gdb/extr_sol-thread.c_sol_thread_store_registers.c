
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int prgregset_t ;
typedef int prfpregset_t ;
typedef int gdb_gregset_t ;
typedef int gdb_fpregset_t ;
typedef int caddr_t ;
struct TYPE_2__ {int (* to_store_registers ) (int) ;} ;


 int GET_THREAD (int ) ;
 int MAX_REGISTER_SIZE ;
 scalar_t__ TD_NOXREGS ;
 scalar_t__ TD_OK ;
 int alloca (int) ;
 int error (char*,int ) ;
 int fill_fpregset (int *,int) ;
 int fill_gregset (int *,int) ;
 int inferior_ptid ;
 int is_thread (int ) ;
 int main_ta ;
 scalar_t__ p_td_ta_map_id2thr (int ,int ,int *) ;
 scalar_t__ p_td_thr_getfpregs (int *,int *) ;
 scalar_t__ p_td_thr_getgregs (int *,int ) ;
 scalar_t__ p_td_thr_setfpregs (int *,int *) ;
 scalar_t__ p_td_thr_setgregs (int *,int ) ;
 TYPE_1__ procfs_ops ;
 int regcache_collect (int,char*) ;
 int stub1 (int) ;
 int supply_register (int,char*) ;
 int td_err_string (scalar_t__) ;
 scalar_t__ td_thr_getxregs (int *,int ) ;
 scalar_t__ td_thr_getxregsize (int *,int*) ;

__attribute__((used)) static void
sol_thread_store_registers (int regno)
{
  thread_t thread;
  td_thrhandle_t thandle;
  td_err_e val;
  prgregset_t gregset;
  prfpregset_t fpregset;





  if (!is_thread (inferior_ptid))
    {
      procfs_ops.to_store_registers (regno);
      return;
    }



  thread = GET_THREAD (inferior_ptid);

  val = p_td_ta_map_id2thr (main_ta, thread, &thandle);
  if (val != TD_OK)
    error ("sol_thread_store_registers: td_ta_map_id2thr %s",
    td_err_string (val));

  if (regno != -1)
    {
      char old_value[MAX_REGISTER_SIZE];


      regcache_collect (regno, old_value);

      val = p_td_thr_getgregs (&thandle, gregset);
      if (val != TD_OK)
 error ("sol_thread_store_registers: td_thr_getgregs %s",
        td_err_string (val));
      val = p_td_thr_getfpregs (&thandle, &fpregset);
      if (val != TD_OK)
 error ("sol_thread_store_registers: td_thr_getfpregs %s",
        td_err_string (val));


      supply_register (regno, old_value);
    }

  fill_gregset ((gdb_gregset_t *) &gregset, regno);
  fill_fpregset ((gdb_fpregset_t *) &fpregset, regno);

  val = p_td_thr_setgregs (&thandle, gregset);
  if (val != TD_OK)
    error ("sol_thread_store_registers: td_thr_setgregs %s",
    td_err_string (val));
  val = p_td_thr_setfpregs (&thandle, &fpregset);
  if (val != TD_OK)
    error ("sol_thread_store_registers: td_thr_setfpregs %s",
    td_err_string (val));
}

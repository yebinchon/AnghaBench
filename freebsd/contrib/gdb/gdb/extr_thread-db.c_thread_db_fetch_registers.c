
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef scalar_t__ prgregset_t ;
typedef int gdb_prfpregset_t ;
typedef int gdb_gregset_t ;
struct TYPE_4__ {int (* to_fetch_registers ) (int) ;} ;
struct TYPE_3__ {int th; } ;


 scalar_t__ GET_THREAD (int ) ;
 scalar_t__ TD_OK ;
 int error (char*,long,char*) ;
 struct thread_info* find_thread_pid (int ) ;
 int inferior_ptid ;
 int is_thread (int ) ;
 int stub1 (int) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;
 TYPE_2__* target_beneath ;
 scalar_t__ td_thr_getfpregs_p (int *,int *) ;
 scalar_t__ td_thr_getgregs_p (int *,scalar_t__) ;
 char* thread_db_err_str (scalar_t__) ;
 int thread_db_map_id2thr (struct thread_info*,int) ;

__attribute__((used)) static void
thread_db_fetch_registers (int regno)
{
  struct thread_info *thread_info;
  prgregset_t gregset;
  gdb_prfpregset_t fpregset;
  td_err_e err;

  if (!is_thread (inferior_ptid))
    {

      target_beneath->to_fetch_registers (regno);
      return;
    }

  thread_info = find_thread_pid (inferior_ptid);
  thread_db_map_id2thr (thread_info, 1);

  err = td_thr_getgregs_p (&thread_info->private->th, gregset);
  if (err != TD_OK)
    error ("Cannot fetch general-purpose registers for thread %ld: %s",
    (long) GET_THREAD (inferior_ptid), thread_db_err_str (err));

  err = td_thr_getfpregs_p (&thread_info->private->th, &fpregset);
  if (err != TD_OK)
    error ("Cannot get floating-point registers for thread %ld: %s",
    (long) GET_THREAD (inferior_ptid), thread_db_err_str (err));




  supply_gregset ((gdb_gregset_t *) gregset);
  supply_fpregset (&fpregset);
}

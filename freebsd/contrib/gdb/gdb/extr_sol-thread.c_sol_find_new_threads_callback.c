
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int td_err_e ;
typedef int ptid_t ;


 int BUILD_THREAD (int ,int ) ;
 int PIDGET (int ) ;
 int TD_OK ;
 int add_thread (int ) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 int p_td_thr_get_info (int const*,TYPE_1__*) ;

__attribute__((used)) static int
sol_find_new_threads_callback (const td_thrhandle_t *th, void *ignored)
{
  td_err_e retval;
  td_thrinfo_t ti;
  ptid_t ptid;

  if ((retval = p_td_thr_get_info (th, &ti)) != TD_OK)
    {
      return -1;
    }
  ptid = BUILD_THREAD (ti.ti_tid, PIDGET (inferior_ptid));
  if (!in_thread_list (ptid))
    add_thread (ptid);

  return 0;
}

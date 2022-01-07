
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int td_thrhandle_t ;
typedef int td_err_e ;
typedef int ptid_t ;
struct TYPE_4__ {int (* to_thread_alive ) (int ) ;} ;
struct TYPE_3__ {int (* to_thread_alive ) (int ) ;} ;


 int GET_THREAD (int ) ;
 int TD_OK ;
 scalar_t__ is_thread (int ) ;
 int main_ta ;
 TYPE_2__ orig_core_ops ;
 int p_td_ta_map_id2thr (int ,int,int *) ;
 int p_td_thr_validate (int *) ;
 TYPE_1__ procfs_ops ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 scalar_t__ target_has_execution ;

__attribute__((used)) static int
sol_thread_alive (ptid_t ptid)
{
  if (is_thread (ptid))
    {
      td_err_e val;
      td_thrhandle_t th;
      int pid;

      pid = GET_THREAD (ptid);
      if ((val = p_td_ta_map_id2thr (main_ta, pid, &th)) != TD_OK)
 return 0;
      if ((val = p_td_thr_validate (&th)) != TD_OK)
 return 0;
      return 1;
    }
  else

    {
      if (target_has_execution)
 return procfs_ops.to_thread_alive (ptid);
      else
 return orig_core_ops.to_thread_alive (ptid);
    }
}

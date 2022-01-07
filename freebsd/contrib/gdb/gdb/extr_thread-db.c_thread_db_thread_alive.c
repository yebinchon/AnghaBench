
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int td_thrhandle_t ;
typedef int td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef int ptid_t ;
struct TYPE_6__ {int (* to_thread_alive ) (int ) ;} ;
struct TYPE_5__ {scalar_t__ ti_state; } ;
struct TYPE_4__ {int ti_valid; TYPE_2__ ti; int th; int th_valid; } ;


 int TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 struct thread_info* find_thread_pid (int ) ;
 scalar_t__ is_thread (int ) ;
 int stub1 (int ) ;
 TYPE_3__* target_beneath ;
 int td_thr_get_info_p (int *,TYPE_2__*) ;
 int td_thr_validate_p (int *) ;
 int thread_db_map_id2thr (struct thread_info*,int ) ;

__attribute__((used)) static int
thread_db_thread_alive (ptid_t ptid)
{
  td_thrhandle_t th;
  td_err_e err;

  if (is_thread (ptid))
    {
      struct thread_info *thread_info;
      thread_info = find_thread_pid (ptid);

      thread_db_map_id2thr (thread_info, 0);
      if (!thread_info->private->th_valid)
 return 0;

      err = td_thr_validate_p (&thread_info->private->th);
      if (err != TD_OK)
 return 0;

      if (!thread_info->private->ti_valid)
 {
   err =
     td_thr_get_info_p (&thread_info->private->th,
          &thread_info->private->ti);
   if (err != TD_OK)
     return 0;
   thread_info->private->ti_valid = 1;
 }

      if (thread_info->private->ti.ti_state == TD_THR_UNKNOWN
   || thread_info->private->ti.ti_state == TD_THR_ZOMBIE)
 return 0;

      return 1;
    }

  if (target_beneath->to_thread_alive)
    return target_beneath->to_thread_alive (ptid);

  return 0;
}

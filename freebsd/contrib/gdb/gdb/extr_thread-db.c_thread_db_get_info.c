
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int td_thrinfo_t ;
typedef scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
struct TYPE_2__ {int ti_valid; int ti; int th; int th_valid; } ;


 scalar_t__ TD_OK ;
 int error (char*,int ) ;
 scalar_t__ td_thr_get_info_p (int *,int *) ;
 int thread_db_err_str (scalar_t__) ;
 int thread_db_map_id2thr (struct thread_info*,int) ;

__attribute__((used)) static td_thrinfo_t *
thread_db_get_info (struct thread_info *thread_info)
{
  td_err_e err;

  if (thread_info->private->ti_valid)
    return &thread_info->private->ti;

  if (!thread_info->private->th_valid)
    thread_db_map_id2thr (thread_info, 1);

  err =
    td_thr_get_info_p (&thread_info->private->th, &thread_info->private->ti);
  if (err != TD_OK)
    error ("thread_db_get_info: cannot get thread info: %s",
    thread_db_err_str (err));

  thread_info->private->ti_valid = 1;
  return &thread_info->private->ti;
}

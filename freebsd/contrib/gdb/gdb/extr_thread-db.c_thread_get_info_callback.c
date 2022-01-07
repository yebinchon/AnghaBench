
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ti ;
struct TYPE_11__ {int ti_tid; } ;
typedef TYPE_2__ const td_thrinfo_t ;
typedef TYPE_2__ td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef int ptid_t ;
struct TYPE_10__ {int th_valid; int ti_valid; int ti; int th; } ;


 int BUILD_THREAD (int ,int ) ;
 int GET_PID (int ) ;
 scalar_t__ TD_OK ;
 int attach_thread (int ,TYPE_2__ const*,TYPE_2__ const*,int) ;
 int error (char*,int ) ;
 struct thread_info* find_thread_pid (int ) ;
 int gdb_assert (int ) ;
 int inferior_ptid ;
 int memcpy (int *,TYPE_2__ const*,int) ;
 scalar_t__ td_thr_get_info_p (TYPE_2__ const*,TYPE_2__ const*) ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static int
thread_get_info_callback (const td_thrhandle_t *thp, void *infop)
{
  td_thrinfo_t ti;
  td_err_e err;
  struct thread_info *thread_info;
  ptid_t thread_ptid;

  err = td_thr_get_info_p (thp, &ti);
  if (err != TD_OK)
    error ("thread_get_info_callback: cannot get thread info: %s",
    thread_db_err_str (err));


  thread_ptid = BUILD_THREAD (ti.ti_tid, GET_PID (inferior_ptid));
  thread_info = find_thread_pid (thread_ptid);

  if (thread_info == ((void*)0))
    {

      attach_thread (thread_ptid, thp, &ti, 1);
      thread_info = find_thread_pid (thread_ptid);
      gdb_assert (thread_info != ((void*)0));
    }

  memcpy (&thread_info->private->th, thp, sizeof (*thp));
  thread_info->private->th_valid = 1;
  memcpy (&thread_info->private->ti, &ti, sizeof (ti));
  thread_info->private->ti_valid = 1;

  if (infop != ((void*)0))
    *(struct thread_info **) infop = thread_info;

  return 0;
}

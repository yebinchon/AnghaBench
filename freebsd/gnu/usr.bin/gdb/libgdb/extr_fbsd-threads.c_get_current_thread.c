
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int ptid_t ;
struct TYPE_2__ {int pid; } ;


 int BUILD_LWP (long,int ) ;
 int attach_thread (int ,int *,int *,int) ;
 long get_current_lwp (int ) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 TYPE_1__ proc_handle ;
 int thread_from_lwp (int ,int *,int *) ;

__attribute__((used)) static void
get_current_thread ()
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  long lwp;
  ptid_t tmp, ptid;

  lwp = get_current_lwp (proc_handle.pid);
  tmp = BUILD_LWP (lwp, proc_handle.pid);
  ptid = thread_from_lwp (tmp, &th, &ti);
  if (!in_thread_list (ptid))
    {
      attach_thread (ptid, &th, &ti, 1);
    }
  inferior_ptid = ptid;
}

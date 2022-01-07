
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_info {TYPE_2__* private; } ;
typedef int ptid_t ;
struct TYPE_3__ {int ti_lid; } ;
struct TYPE_4__ {TYPE_1__ ti; } ;


 int BUILD_LWP (int ,int ) ;
 int GET_PID (int ) ;
 struct thread_info* find_thread_pid (int ) ;
 int is_thread (int ) ;
 int thread_db_get_info (struct thread_info*) ;

__attribute__((used)) static ptid_t
lwp_from_thread (ptid_t ptid)
{
  struct thread_info *thread_info;
  ptid_t thread_ptid;

  if (!is_thread (ptid))
    return ptid;

  thread_info = find_thread_pid (ptid);
  thread_db_get_info (thread_info);

  return BUILD_LWP (thread_info->private->ti.ti_lid, GET_PID (ptid));
}

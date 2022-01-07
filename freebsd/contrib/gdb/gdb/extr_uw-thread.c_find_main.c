
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ mapp; } ;
typedef scalar_t__ CORE_ADDR ;


 int MKTID (int ,int) ;
 int PIDGET (int ) ;
 struct thread_info* find_thread_pid (int ) ;
 int inferior_ptid ;
 int notice_thread ;
 scalar_t__ thr_map_main ;
 int thread_iter (int ,void*) ;

__attribute__((used)) static CORE_ADDR
find_main (void)
{
  if (!thr_map_main)
    {
      struct thread_info *info;
      thread_iter (notice_thread, (void *)1);
      if ((info = find_thread_pid (MKTID (PIDGET (inferior_ptid), 1))))
 thr_map_main = info->private->mapp;
    }
  return thr_map_main;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_6__ {int lwp_id; } ;
struct TYPE_5__ {int thr_tid; int thr_lwpp; } ;
struct TYPE_7__ {int mapp; TYPE_2__ lwp; TYPE_1__ map; } ;
typedef TYPE_3__ iter_t ;


 int MKTID (int ,int) ;
 int PIDGET (int ) ;
 int add_thread_uw (int,int,int ,int ) ;
 int find_thread_pid (int ) ;
 int inferior_ptid ;

__attribute__((used)) static int
notice_thread (iter_t *iter, void *data)
{
  int thrid = iter->map.thr_tid;
  int lwpid = !iter->map.thr_lwpp ? 0 : iter->lwp.lwp_id;
  ptid_t ptid = MKTID (PIDGET (inferior_ptid), thrid);

  if (!find_thread_pid (ptid) && (!data || thrid == 1))
    add_thread_uw (thrid, lwpid, iter->mapp, ptid);

  return 0;
}

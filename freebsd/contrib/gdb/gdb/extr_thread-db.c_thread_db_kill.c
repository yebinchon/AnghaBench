
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_kill ) () ;} ;


 int inferior_ptid ;
 int lwp_from_thread (int ) ;
 int stub1 () ;
 TYPE_1__* target_beneath ;

__attribute__((used)) static void
thread_db_kill (void)
{


  inferior_ptid = lwp_from_thread (inferior_ptid);
  target_beneath->to_kill ();
}

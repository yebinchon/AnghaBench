
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_mourn_inferior ) () ;} ;


 TYPE_1__ procfs_ops ;
 int sol_thread_ops ;
 int stub1 () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
sol_thread_mourn_inferior (void)
{
  unpush_target (&sol_thread_ops);
  procfs_ops.to_mourn_inferior ();
}

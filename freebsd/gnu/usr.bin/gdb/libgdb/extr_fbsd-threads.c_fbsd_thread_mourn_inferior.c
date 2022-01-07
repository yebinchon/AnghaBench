
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_mourn_inferior ) () ;} ;


 TYPE_1__ child_ops ;
 scalar_t__ fbsd_thread_active ;
 int fbsd_thread_deactivate () ;
 int fbsd_thread_ops ;
 int stub1 () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
fbsd_thread_mourn_inferior (void)
{
  if (fbsd_thread_active)
    fbsd_thread_deactivate ();

  unpush_target (&fbsd_thread_ops);

  child_ops.to_mourn_inferior ();
}

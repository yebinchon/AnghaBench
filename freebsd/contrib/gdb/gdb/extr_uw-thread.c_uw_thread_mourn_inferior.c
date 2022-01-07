
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_mourn_inferior ) () ;} ;


 TYPE_1__ base_ops ;
 int deactivate_uw_thread () ;
 int stub1 () ;

__attribute__((used)) static void
uw_thread_mourn_inferior (void)
{
  deactivate_uw_thread ();
  base_ops.to_mourn_inferior ();
}

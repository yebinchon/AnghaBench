
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_kill ) () ;} ;


 TYPE_1__ base_ops ;
 int stub1 () ;

__attribute__((used)) static void
uw_thread_kill (void)
{
  base_ops.to_kill ();
}

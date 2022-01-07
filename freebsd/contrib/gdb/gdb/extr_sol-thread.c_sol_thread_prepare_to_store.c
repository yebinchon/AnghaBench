
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_prepare_to_store ) () ;} ;


 TYPE_1__ procfs_ops ;
 int stub1 () ;

__attribute__((used)) static void
sol_thread_prepare_to_store (void)
{
  procfs_ops.to_prepare_to_store ();
}

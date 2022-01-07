
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_detach ) (char*,int) ;} ;


 TYPE_1__ base_ops ;
 int deactivate_uw_thread () ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
uw_thread_detach (char *args, int from_tty)
{
  deactivate_uw_thread ();
  base_ops.to_detach (args, from_tty);
}

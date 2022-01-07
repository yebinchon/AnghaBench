
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_detach ) (char*,int) ;} ;


 int core_ops ;
 TYPE_1__ orig_core_ops ;
 int stub1 (char*,int) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
sol_core_detach (char *args, int from_tty)
{
  unpush_target (&core_ops);
  orig_core_ops.to_detach (args, from_tty);
}

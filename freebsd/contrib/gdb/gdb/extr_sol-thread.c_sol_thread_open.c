
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_open ) (char*,int) ;} ;


 TYPE_1__ procfs_ops ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
sol_thread_open (char *arg, int from_tty)
{
  procfs_ops.to_open (arg, from_tty);
}

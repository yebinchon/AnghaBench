
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_attach ) (char*,int) ;} ;


 TYPE_1__ procfs_ops ;
 int stub1 (char*,int) ;
 int thr_infpid (int *) ;
 scalar_t__ uw_thread_active ;

__attribute__((used)) static void
uw_thread_attach (char *args, int from_tty)
{
  procfs_ops.to_attach (args, from_tty);
  if (uw_thread_active)
    thr_infpid (((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_post_attach ) (int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int stub1 (int) ;

__attribute__((used)) static void
debug_to_post_attach (int pid)
{
  debug_target.to_post_attach (pid);

  fprintf_unfiltered (gdb_stdlog, "target_post_attach (%d)\n", pid);
}

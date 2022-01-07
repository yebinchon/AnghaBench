
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_stop ) () ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 int stub1 () ;

__attribute__((used)) static void
debug_to_stop (void)
{
  debug_target.to_stop ();

  fprintf_unfiltered (gdb_stdlog, "target_stop ()\n");
}

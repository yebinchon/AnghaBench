
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_find_new_threads ) () ;} ;


 TYPE_1__ debug_target ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_stdlog ;
 int stub1 () ;

__attribute__((used)) static void
debug_to_find_new_threads (void)
{
  debug_target.to_find_new_threads ();

  fputs_unfiltered ("target_find_new_threads ()\n", gdb_stdlog);
}

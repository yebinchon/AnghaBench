
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_target ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int target_close (int *,int) ;

__attribute__((used)) static void
debug_to_close (int quitting)
{
  target_close (&debug_target, quitting);
  fprintf_unfiltered (gdb_stdlog, "target_close (%d)\n", quitting);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* to_stopped_data_address ) () ;} ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long) ;
 int gdb_stdlog ;
 scalar_t__ stub1 () ;

__attribute__((used)) static CORE_ADDR
debug_to_stopped_data_address (void)
{
  CORE_ADDR retval;

  retval = debug_target.to_stopped_data_address ();

  fprintf_unfiltered (gdb_stdlog,
        "target_stopped_data_address () = 0x%lx\n",
        (unsigned long) retval);
  return retval;
}

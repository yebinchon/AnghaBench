
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_region_size_ok_for_hw_watchpoint ) (int) ;} ;
typedef int CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,unsigned long,unsigned long) ;
 int gdb_stdlog ;
 int stub1 (int) ;

__attribute__((used)) static int
debug_to_region_size_ok_for_hw_watchpoint (int byte_count)
{
  CORE_ADDR retval;

  retval = debug_target.to_region_size_ok_for_hw_watchpoint (byte_count);

  fprintf_unfiltered (gdb_stdlog,
        "TARGET_REGION_SIZE_OK_FOR_HW_WATCHPOINT (%ld) = 0x%lx\n",
        (unsigned long) byte_count,
        (unsigned long) retval);
  return retval;
}

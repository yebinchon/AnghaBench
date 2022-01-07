
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct acpi_cx {int do_mwait; int mwait_hint; int mwait_hw_coord; int mwait_bm_avoidance; } ;


 int CST_FFH_MWAIT_BM_AVOID ;
 int CST_FFH_MWAIT_HW_COORD ;

__attribute__((used)) static void
acpi_cpu_cx_cst_mwait(struct acpi_cx *cx_ptr, uint64_t address, int accsize)
{

 cx_ptr->do_mwait = 1;
 cx_ptr->mwait_hint = address & 0xffffffff;
 cx_ptr->mwait_hw_coord = (accsize & CST_FFH_MWAIT_HW_COORD) != 0;
 cx_ptr->mwait_bm_avoidance = (accsize & CST_FFH_MWAIT_BM_AVOID) != 0;
}

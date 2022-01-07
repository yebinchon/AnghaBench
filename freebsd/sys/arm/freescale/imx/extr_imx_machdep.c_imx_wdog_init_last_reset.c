
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint16_t ;
struct TYPE_2__ {char* oid_arg1; } ;


 int WDOG_RSR_POR ;
 int WDOG_RSR_SFTW ;
 int WDOG_RSR_TOUT ;
 int* devmap_ptov (int ,int) ;
 int last_reset_status ;
 TYPE_1__ sysctl___hw_imx_last_reset_reason ;

void
imx_wdog_init_last_reset(vm_offset_t wdsr_phys)
{
 volatile uint16_t * psr;

 if ((psr = devmap_ptov(wdsr_phys, sizeof(*psr))) == ((void*)0))
  return;
 last_reset_status = *psr;
 if (last_reset_status & WDOG_RSR_SFTW) {
  sysctl___hw_imx_last_reset_reason.oid_arg1 = "SoftwareReset";
 } else if (last_reset_status & WDOG_RSR_TOUT) {
  sysctl___hw_imx_last_reset_reason.oid_arg1 = "WatchdogTimeout";
 } else if (last_reset_status & WDOG_RSR_POR) {
  sysctl___hw_imx_last_reset_reason.oid_arg1 = "PowerOnReset";
 }
}

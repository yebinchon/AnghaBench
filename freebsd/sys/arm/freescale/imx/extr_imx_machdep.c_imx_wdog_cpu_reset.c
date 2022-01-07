
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint16_t ;


 int DELAY (int) ;
 int volatile WDOG_CR_SRS ;
 int volatile WDOG_CR_WDA ;
 int volatile WDOG_CR_WDT ;
 int cpu_spinwait () ;
 int* devmap_ptov (int ,int) ;
 int printf (char*) ;

void
imx_wdog_cpu_reset(vm_offset_t wdcr_physaddr)
{
 volatile uint16_t cr, *pcr;

 if ((pcr = devmap_ptov(wdcr_physaddr, sizeof(*pcr))) == ((void*)0)) {
  printf("imx_wdog_cpu_reset(): "
      "cannot find control register... locking up now.");
  for (;;)
   cpu_spinwait();
 }
 cr = *pcr;
 if (cr & WDOG_CR_WDT) {
  cr &= ~WDOG_CR_WDA;
  *pcr = cr;
  DELAY(1000000);
  printf("imx_wdog_cpu_reset(): "
      "External reset failed, trying internal cpu-reset\n");
  DELAY(10000);
 }







 cr &= ~WDOG_CR_SRS;
 *pcr = cr;
 *pcr = cr;
 *pcr = cr;


 for (;;)
  cpu_spinwait();
}

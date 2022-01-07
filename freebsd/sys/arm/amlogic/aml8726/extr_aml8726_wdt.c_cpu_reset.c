
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AML_WDT_CTRL_CPU_WDRESET_MASK ;
 int AML_WDT_CTRL_EN ;
 int AML_WDT_CTRL_REG ;
 int AML_WDT_CTRL_TERMINAL_CNT_SHIFT ;
 int AML_WDT_RESET_REG ;
 int CSR_WRITE_4 (int *,int ,int) ;
 int * aml8726_wdt_sc ;
 int printf (char*) ;

void
cpu_reset(void)
{


 if (aml8726_wdt_sc == ((void*)0))
  printf("Reset hardware has not yet been initialized.\n");
 else {
  CSR_WRITE_4(aml8726_wdt_sc, AML_WDT_RESET_REG, 0);
  CSR_WRITE_4(aml8726_wdt_sc, AML_WDT_CTRL_REG,
      (AML_WDT_CTRL_CPU_WDRESET_MASK | AML_WDT_CTRL_EN |
      (10 << AML_WDT_CTRL_TERMINAL_CNT_SHIFT)));
 }

 while (1);
}

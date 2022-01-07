
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AML_M8B_CPU_PWR_CNTL0_MODE_CPU1_MASK ;
 int AML_M8B_CPU_PWR_CNTL1_PWR_CPU1 ;
 int AML_M8B_CPU_PWR_MEM_PD0_CPU1 ;
 int AML_M8B_CPU_PWR_MEM_PD0_REG ;
 int AML_M8_CPU_CLK_CNTL_RESET_CPU1 ;
 int AML_M8_CPU_PWR_CNTL0_ISO_CPU1 ;
 int AML_M8_CPU_PWR_CNTL0_REG ;
 int AML_M8_CPU_PWR_CNTL1_MODE_CPU1_MASK ;
 int AML_M8_CPU_PWR_CNTL1_REG ;
 int AML_SCU_CPU_PWR_STATUS_CPU1_MASK ;
 int AML_SCU_CPU_PWR_STATUS_REG ;
 int AML_SOC_CPU_CLK_CNTL_REG ;


 int AOBUS_BARRIER (int ) ;
 int AOBUS_READ_4 (int ) ;
 int AOBUS_WRITE_4 (int ,int) ;
 int CBUS_BARRIER (int ) ;
 int CBUS_READ_4 (int ) ;
 int CBUS_WRITE_4 (int ,int) ;
 int DELAY (int) ;
 int SCU_BARRIER (int ) ;
 int SCU_READ_4 (int ) ;
 int SCU_WRITE_4 (int ,int) ;
 int aml8726_soc_hw_rev ;

__attribute__((used)) static void
power_on_cpu(int cpu)
{
 uint32_t scpsr;
 uint32_t value;

 if (cpu <= 0)
  return;







 switch (aml8726_soc_hw_rev) {
 case 129:
 case 128:



  scpsr = SCU_READ_4(AML_SCU_CPU_PWR_STATUS_REG);
  scpsr &= ~(AML_SCU_CPU_PWR_STATUS_CPU1_MASK << ((cpu - 1) * 8));
  SCU_WRITE_4(AML_SCU_CPU_PWR_STATUS_REG, scpsr);
  SCU_BARRIER(AML_SCU_CPU_PWR_STATUS_REG);

  if (aml8726_soc_hw_rev == 128) {






    value = AOBUS_READ_4(AML_M8_CPU_PWR_CNTL0_REG);
    value &= ~(AML_M8B_CPU_PWR_CNTL0_MODE_CPU1_MASK <<
       ((cpu - 1) * 2));
    AOBUS_WRITE_4(AML_M8_CPU_PWR_CNTL0_REG, value);
    AOBUS_BARRIER(AML_M8_CPU_PWR_CNTL0_REG);
   }

  DELAY(5);




  value = CBUS_READ_4(AML_SOC_CPU_CLK_CNTL_REG);
  value |= AML_M8_CPU_CLK_CNTL_RESET_CPU1 << (cpu - 1);
  CBUS_WRITE_4(AML_SOC_CPU_CLK_CNTL_REG, value);
  CBUS_BARRIER(AML_SOC_CPU_CLK_CNTL_REG);

  if (aml8726_soc_hw_rev == 128) {



    value = AOBUS_READ_4(AML_M8B_CPU_PWR_MEM_PD0_REG);
    value &= ~((uint32_t)AML_M8B_CPU_PWR_MEM_PD0_CPU1 >>
       ((cpu - 1) * 4));
    AOBUS_WRITE_4(AML_M8B_CPU_PWR_MEM_PD0_REG, value);
    AOBUS_BARRIER(AML_M8B_CPU_PWR_MEM_PD0_REG);
   }




  value = AOBUS_READ_4(AML_M8_CPU_PWR_CNTL1_REG);
  value &= ~(AML_M8_CPU_PWR_CNTL1_MODE_CPU1_MASK <<
      ((cpu - 1) * 2));
  AOBUS_WRITE_4(AML_M8_CPU_PWR_CNTL1_REG, value);
  AOBUS_BARRIER(AML_M8_CPU_PWR_CNTL1_REG);

  DELAY(10);

  if (aml8726_soc_hw_rev == 128) {



   for ( ; ; ) {
    value = AOBUS_READ_4(AML_M8_CPU_PWR_CNTL1_REG);
    value &= AML_M8B_CPU_PWR_CNTL1_PWR_CPU1 <<
        (cpu - 1);
    if (value)
     break;
    DELAY(10);
   }
  }




  value = AOBUS_READ_4(AML_M8_CPU_PWR_CNTL0_REG);
  value &= ~(AML_M8_CPU_PWR_CNTL0_ISO_CPU1 << (cpu - 1));
  AOBUS_WRITE_4(AML_M8_CPU_PWR_CNTL0_REG, value);
  AOBUS_BARRIER(AML_M8_CPU_PWR_CNTL0_REG);




  value = CBUS_READ_4(AML_SOC_CPU_CLK_CNTL_REG);
  value &= ~(AML_M8_CPU_CLK_CNTL_RESET_CPU1 << (cpu - 1));
  CBUS_WRITE_4(AML_SOC_CPU_CLK_CNTL_REG, value);
  CBUS_BARRIER(AML_SOC_CPU_CLK_CNTL_REG);

  if (aml8726_soc_hw_rev == 128) {







   SCU_WRITE_4(AML_SCU_CPU_PWR_STATUS_REG, scpsr);
   SCU_BARRIER(AML_SCU_CPU_PWR_STATUS_REG);
  }
  break;
 default:
  break;
 }
}

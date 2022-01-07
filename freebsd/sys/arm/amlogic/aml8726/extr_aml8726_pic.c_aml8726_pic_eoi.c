
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AML_PIC_BIT (uintptr_t) ;
 uintptr_t AML_PIC_NIRQS ;
 int AML_PIC_STAT_CLR_REG (uintptr_t) ;
 int CSR_BARRIER (int ,int ) ;
 int CSR_WRITE_4 (int ,int ,int ) ;
 int aml8726_pic_sc ;
 int arm_irq_memory_barrier (uintptr_t) ;

__attribute__((used)) static void
aml8726_pic_eoi(void *arg)
{
 uintptr_t nb = (uintptr_t) arg;

 if (nb >= AML_PIC_NIRQS)
  return;

 arm_irq_memory_barrier(nb);

 CSR_WRITE_4(aml8726_pic_sc, AML_PIC_STAT_CLR_REG(nb), AML_PIC_BIT(nb));

 CSR_BARRIER(aml8726_pic_sc, AML_PIC_STAT_CLR_REG(nb));
}

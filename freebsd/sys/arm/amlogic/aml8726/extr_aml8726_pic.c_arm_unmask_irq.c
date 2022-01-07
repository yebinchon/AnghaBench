
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AML_PIC_BIT (uintptr_t) ;
 int AML_PIC_MASK_REG (uintptr_t) ;
 uintptr_t AML_PIC_NIRQS ;
 int CSR_BARRIER (int ,int ) ;
 int CSR_READ_4 (int ,int ) ;
 int CSR_WRITE_4 (int ,int ,int ) ;
 int aml8726_pic_sc ;
 int arm_irq_memory_barrier (uintptr_t) ;

void
arm_unmask_irq(uintptr_t nb)
{
 uint32_t mask;

 if (nb >= AML_PIC_NIRQS)
  return;

 arm_irq_memory_barrier(nb);

 mask = CSR_READ_4(aml8726_pic_sc, AML_PIC_MASK_REG(nb));
 mask |= AML_PIC_BIT(nb);
 CSR_WRITE_4(aml8726_pic_sc, AML_PIC_MASK_REG(nb), mask);

 CSR_BARRIER(aml8726_pic_sc, AML_PIC_MASK_REG(nb));
}

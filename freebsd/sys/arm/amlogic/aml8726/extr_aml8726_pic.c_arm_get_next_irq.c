
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AML_PIC_BIT (int) ;
 int AML_PIC_IRQS_PER_CNTRL ;
 int AML_PIC_NIRQS ;
 int AML_PIC_STAT_REG (int) ;
 int CSR_READ_4 (int ,int ) ;
 int aml8726_pic_sc ;

int
arm_get_next_irq(int last)
{
 uint32_t value;
 int irq;
 int start;







 start = (last + 1) % AML_PIC_NIRQS;
 irq = start;

 for ( ; ; ) {
  value = CSR_READ_4(aml8726_pic_sc, AML_PIC_STAT_REG(irq));

  for ( ; ; ) {
   if ((value & AML_PIC_BIT(irq)) != 0)
    return (irq);

   irq = (irq + 1) % AML_PIC_NIRQS;

   if (irq == start)
    return (-1);

   if ((irq % AML_PIC_IRQS_PER_CNTRL) == 0)
    break;
  }
 }
}

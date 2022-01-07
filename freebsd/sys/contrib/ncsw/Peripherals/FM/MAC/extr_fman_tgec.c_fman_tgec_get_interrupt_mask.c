
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int imask; } ;


 int ioread32be (int *) ;

uint32_t fman_tgec_get_interrupt_mask(struct tgec_regs *regs)
{
 return ioread32be(&regs->imask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int imask; } ;


 int ioread32be (int *) ;

uint32_t fman_memac_get_interrupt_mask(struct memac_regs *regs)
{
    return ioread32be(&regs->imask);
}

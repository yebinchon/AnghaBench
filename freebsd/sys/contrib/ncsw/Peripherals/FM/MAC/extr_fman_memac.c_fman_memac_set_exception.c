
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int imask; } ;


 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_memac_set_exception(struct memac_regs *regs, uint32_t val, bool enable)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->imask);
    if (enable)
        tmp |= val;
    else
        tmp &= ~val;

    iowrite32be(tmp, &regs->imask);
}

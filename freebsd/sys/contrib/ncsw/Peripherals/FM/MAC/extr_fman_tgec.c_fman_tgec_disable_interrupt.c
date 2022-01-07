
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int imask; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_tgec_disable_interrupt(struct tgec_regs *regs, uint32_t ev_mask)
{
 iowrite32be(ioread32be(&regs->imask) & ~ev_mask, &regs->imask);
}

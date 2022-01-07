
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgec_regs {int mac_addr_3; int mac_addr_2; } ;


 int iowrite32be (int ,int *) ;

void fman_tgec_clear_addr_in_paddr(struct tgec_regs *regs)
{
 iowrite32be(0, &regs->mac_addr_2);
 iowrite32be(0, &regs->mac_addr_3);
}

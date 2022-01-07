
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct dtsec_regs {TYPE_1__* macaddr; } ;
struct TYPE_2__ {int exact_match2; int exact_match1; } ;


 int iowrite32be (int ,int *) ;

void fman_dtsec_clear_addr_in_paddr(struct dtsec_regs *regs, uint8_t paddr_num)
{
    iowrite32be(0, &regs->macaddr[paddr_num].exact_match1);
    iowrite32be(0, &regs->macaddr[paddr_num].exact_match2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int command_config; } ;


 int CMD_CFG_PROMIS_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_memac_set_promiscuous(struct memac_regs *regs, bool val)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->command_config);

    if (val)
        tmp |= CMD_CFG_PROMIS_EN;
    else
        tmp &= ~CMD_CFG_PROMIS_EN;

    iowrite32be(tmp, &regs->command_config);
}

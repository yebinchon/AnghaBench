
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int command_config; } ;


 int CMD_CFG_MG ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_memac_set_wol(struct memac_regs *regs, bool enable)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->command_config);

    if (enable)
        tmp |= CMD_CFG_MG;
    else
        tmp &= ~CMD_CFG_MG;

    iowrite32be(tmp, &regs->command_config);
}

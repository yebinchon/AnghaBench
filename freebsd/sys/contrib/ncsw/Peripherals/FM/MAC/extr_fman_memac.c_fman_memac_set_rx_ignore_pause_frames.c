
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int command_config; } ;


 int CMD_CFG_PAUSE_IGNORE ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_memac_set_rx_ignore_pause_frames(struct memac_regs *regs,bool enable)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->command_config);
    if (enable)
        tmp |= CMD_CFG_PAUSE_IGNORE;
    else
        tmp &= ~CMD_CFG_PAUSE_IGNORE;

    iowrite32be(tmp, &regs->command_config);
}

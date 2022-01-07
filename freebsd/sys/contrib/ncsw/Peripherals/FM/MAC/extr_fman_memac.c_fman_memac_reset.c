
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int command_config; } ;


 int CMD_CFG_SW_RESET ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_memac_reset(struct memac_regs *regs)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->command_config);

    tmp |= CMD_CFG_SW_RESET;

    iowrite32be(tmp, &regs->command_config);

    while (ioread32be(&regs->command_config) & CMD_CFG_SW_RESET);
}

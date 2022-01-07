
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int command_config; } ;


 int CMD_CFG_STAT_CLR ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_tgec_reset_stat(struct tgec_regs *regs)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->command_config);

 tmp |= CMD_CFG_STAT_CLR;

 iowrite32be(tmp, &regs->command_config);

 while (ioread32be(&regs->command_config) & CMD_CFG_STAT_CLR) ;
}

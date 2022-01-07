
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int command_config; } ;


 int CMD_CFG_EN_TIMESTAMP ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_tgec_enable_1588_time_stamp(struct tgec_regs *regs, bool en)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->command_config);
 if (en)
  tmp |= CMD_CFG_EN_TIMESTAMP;
 else
  tmp &= ~CMD_CFG_EN_TIMESTAMP;
 iowrite32be(tmp, &regs->command_config);
}

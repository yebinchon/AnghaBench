
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int command_config; } ;


 int CMD_CFG_RX_EN ;
 int CMD_CFG_TX_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_tgec_enable(struct tgec_regs *regs, bool apply_rx, bool apply_tx)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->command_config);
 if (apply_rx)
  tmp |= CMD_CFG_RX_EN;
 if (apply_tx)
  tmp |= CMD_CFG_TX_EN;
 iowrite32be(tmp, &regs->command_config);
}

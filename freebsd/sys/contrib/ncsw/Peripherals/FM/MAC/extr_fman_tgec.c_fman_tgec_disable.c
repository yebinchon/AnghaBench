
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

void fman_tgec_disable(struct tgec_regs *regs, bool apply_rx, bool apply_tx)
{
 uint32_t tmp_reg_32;

 tmp_reg_32 = ioread32be(&regs->command_config);
 if (apply_rx)
  tmp_reg_32 &= ~CMD_CFG_RX_EN;
 if (apply_tx)
  tmp_reg_32 &= ~CMD_CFG_TX_EN;
 iowrite32be(tmp_reg_32, &regs->command_config);
}

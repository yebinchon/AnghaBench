
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int pause_quant; int maxfrm; int command_config; } ;
struct tgec_cfg {int pause_quant; scalar_t__ max_frame_length; scalar_t__ time_stamp_enable; scalar_t__ no_length_check_enable; scalar_t__ send_idle_enable; scalar_t__ rx_error_discard; scalar_t__ cmd_frame_enable; scalar_t__ loopback_enable; scalar_t__ tx_addr_ins_enable; scalar_t__ pause_ignore; scalar_t__ pause_forward_enable; scalar_t__ promiscuous_mode_enable; scalar_t__ wan_mode_enable; } ;


 int CMD_CFG_CMD_FRM_EN ;
 int CMD_CFG_EN_TIMESTAMP ;
 int CMD_CFG_LOOPBACK_EN ;
 int CMD_CFG_NO_LEN_CHK ;
 int CMD_CFG_PAUSE_FWD ;
 int CMD_CFG_PAUSE_IGNORE ;
 int CMD_CFG_PROMIS_EN ;
 int CMD_CFG_RX_ER_DISC ;
 int CMD_CFG_SEND_IDLE ;
 int CMD_CFG_TX_ADDR_INS ;
 int CMD_CFG_WAN_MODE ;
 int fman_tgec_ack_event (struct tgec_regs*,int) ;
 int fman_tgec_enable_interrupt (struct tgec_regs*,int) ;
 int iowrite32be (int,int *) ;

int fman_tgec_init(struct tgec_regs *regs, struct tgec_cfg *cfg,
  uint32_t exception_mask)
{
 uint32_t tmp;


 tmp = 0x40;
 if (cfg->wan_mode_enable)
  tmp |= CMD_CFG_WAN_MODE;
 if (cfg->promiscuous_mode_enable)
  tmp |= CMD_CFG_PROMIS_EN;
 if (cfg->pause_forward_enable)
  tmp |= CMD_CFG_PAUSE_FWD;
 if (cfg->pause_ignore)
  tmp |= CMD_CFG_PAUSE_IGNORE;
 if (cfg->tx_addr_ins_enable)
  tmp |= CMD_CFG_TX_ADDR_INS;
 if (cfg->loopback_enable)
  tmp |= CMD_CFG_LOOPBACK_EN;
 if (cfg->cmd_frame_enable)
  tmp |= CMD_CFG_CMD_FRM_EN;
 if (cfg->rx_error_discard)
  tmp |= CMD_CFG_RX_ER_DISC;
 if (cfg->send_idle_enable)
  tmp |= CMD_CFG_SEND_IDLE;
 if (cfg->no_length_check_enable)
  tmp |= CMD_CFG_NO_LEN_CHK;
 if (cfg->time_stamp_enable)
  tmp |= CMD_CFG_EN_TIMESTAMP;
 iowrite32be(tmp, &regs->command_config);


 iowrite32be((uint32_t)cfg->max_frame_length, &regs->maxfrm);

 iowrite32be(cfg->pause_quant, &regs->pause_quant);


 fman_tgec_ack_event(regs, 0xffffffff);
 fman_tgec_enable_interrupt(regs, exception_mask);

 return 0;
}

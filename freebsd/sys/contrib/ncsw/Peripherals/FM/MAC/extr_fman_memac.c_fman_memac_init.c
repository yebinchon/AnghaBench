
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int tx_fifo_sections; int if_mode; int * pause_thresh; int * pause_quanta; int maxfrm; int command_config; } ;
struct memac_cfg {scalar_t__ loopback_enable; scalar_t__ pause_quanta; scalar_t__ max_frame_length; scalar_t__ wake_on_lan; scalar_t__ pad_enable; scalar_t__ rx_sfd_any; scalar_t__ no_length_check_enable; scalar_t__ send_idle_enable; scalar_t__ cmd_frame_enable; scalar_t__ tx_addr_ins_enable; scalar_t__ pause_ignore; scalar_t__ pause_forward_enable; scalar_t__ promiscuous_mode_enable; scalar_t__ wan_mode_enable; } ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef enum enet_interface { ____Placeholder_enet_interface } enet_interface ;


 int CMD_CFG_CNT_FRM_EN ;
 int CMD_CFG_CRC_FWD ;
 int CMD_CFG_LOOPBACK_EN ;
 int CMD_CFG_MG ;
 int CMD_CFG_NO_LEN_CHK ;
 int CMD_CFG_PAUSE_FWD ;
 int CMD_CFG_PAUSE_IGNORE ;
 int CMD_CFG_PROMIS_EN ;
 int CMD_CFG_SEND_IDLE ;
 int CMD_CFG_SFD_ANY ;
 int CMD_CFG_TX_ADDR_INS ;
 int CMD_CFG_TX_PAD_EN ;
 int CMD_CFG_WAN_MODE ;
 int E_ENET_IF_RGMII ;


 int IF_MODE_GMII ;
 int IF_MODE_RGMII ;
 int IF_MODE_RGMII_AUTO ;
 int IF_MODE_XGMII ;
 int TRUE ;
 int TX_FIFO_SECTIONS_TX_AVAIL_10G ;
 int TX_FIFO_SECTIONS_TX_AVAIL_1G ;
 int TX_FIFO_SECTIONS_TX_AVAIL_SLOW_10G ;
 int TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G ;
 int TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_1G ;
 int fman_memac_ack_event (struct memac_regs*,int) ;
 int fman_memac_set_exception (struct memac_regs*,int,int ) ;
 int iowrite32be (int,int *) ;

int fman_memac_init(struct memac_regs *regs,
        struct memac_cfg *cfg,
        enum enet_interface enet_interface,
        enum enet_speed enet_speed,
 bool slow_10g_if,
        uint32_t exceptions)
{
    uint32_t tmp;


    tmp = 0;
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
        tmp |= CMD_CFG_CNT_FRM_EN;
    if (cfg->send_idle_enable)
        tmp |= CMD_CFG_SEND_IDLE;
    if (cfg->no_length_check_enable)
        tmp |= CMD_CFG_NO_LEN_CHK;
    if (cfg->rx_sfd_any)
        tmp |= CMD_CFG_SFD_ANY;
    if (cfg->pad_enable)
        tmp |= CMD_CFG_TX_PAD_EN;
    if (cfg->wake_on_lan)
        tmp |= CMD_CFG_MG;

    tmp |= CMD_CFG_CRC_FWD;

    iowrite32be(tmp, &regs->command_config);


    iowrite32be((uint32_t)cfg->max_frame_length, &regs->maxfrm);


    iowrite32be((uint32_t)cfg->pause_quanta, &regs->pause_quanta[0]);
    iowrite32be((uint32_t)0, &regs->pause_thresh[0]);


    tmp = 0;
    switch (enet_interface) {
    case 128:
    case 129:
        tmp |= IF_MODE_XGMII;
        break;
    default:
        tmp |= IF_MODE_GMII;
        if (enet_interface == E_ENET_IF_RGMII && !cfg->loopback_enable)
            tmp |= IF_MODE_RGMII | IF_MODE_RGMII_AUTO;
    }
    iowrite32be(tmp, &regs->if_mode);


 tmp = 0;
 if (enet_interface == 128 ||
  enet_interface == 129) {
  if(slow_10g_if) {
   tmp |= (TX_FIFO_SECTIONS_TX_AVAIL_SLOW_10G |
    TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G);
  } else {
   tmp |= (TX_FIFO_SECTIONS_TX_AVAIL_10G |
    TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G);
  }
 } else {
  tmp |= (TX_FIFO_SECTIONS_TX_AVAIL_1G |
    TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_1G);
 }
 iowrite32be(tmp, &regs->tx_fifo_sections);


    fman_memac_ack_event(regs, 0xffffffff);
    fman_memac_set_exception(regs, exceptions, TRUE);

    return 0;
}

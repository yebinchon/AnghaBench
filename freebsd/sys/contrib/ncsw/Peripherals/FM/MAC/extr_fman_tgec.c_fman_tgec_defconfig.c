
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgec_cfg {int skip_fman11_workaround; int pause_quant; int max_frame_length; int tx_ipg_length; int time_stamp_enable; int lgth_check_nostdr; int no_length_check_enable; int send_idle_enable; int rx_error_discard; int cmd_frame_enable; int loopback_enable; int tx_addr_ins_enable; int pause_ignore; int pause_forward_enable; int promiscuous_mode_enable; int wan_mode_enable; } ;


 int DEFAULT_CMD_FRAME_ENABLE ;
 int DEFAULT_LGTH_CHECK_NOSTDR ;
 int DEFAULT_LOOPBACK_ENABLE ;
 int DEFAULT_MAX_FRAME_LENGTH ;
 int DEFAULT_NO_LENGTH_CHECK_ENABLE ;
 int DEFAULT_PAUSE_FORWARD_ENABLE ;
 int DEFAULT_PAUSE_IGNORE ;
 int DEFAULT_PAUSE_QUANT ;
 int DEFAULT_PROMISCUOUS_MODE_ENABLE ;
 int DEFAULT_RX_ERROR_DISCARD ;
 int DEFAULT_SEND_IDLE_ENABLE ;
 int DEFAULT_TIME_STAMP_ENABLE ;
 int DEFAULT_TX_ADDR_INS_ENABLE ;
 int DEFAULT_TX_IPG_LENGTH ;
 int DEFAULT_WAN_MODE_ENABLE ;
 int FALSE ;

void fman_tgec_defconfig(struct tgec_cfg *cfg)
{
 cfg->wan_mode_enable = DEFAULT_WAN_MODE_ENABLE;
 cfg->promiscuous_mode_enable = DEFAULT_PROMISCUOUS_MODE_ENABLE;
 cfg->pause_forward_enable = DEFAULT_PAUSE_FORWARD_ENABLE;
 cfg->pause_ignore = DEFAULT_PAUSE_IGNORE;
 cfg->tx_addr_ins_enable = DEFAULT_TX_ADDR_INS_ENABLE;
 cfg->loopback_enable = DEFAULT_LOOPBACK_ENABLE;
 cfg->cmd_frame_enable = DEFAULT_CMD_FRAME_ENABLE;
 cfg->rx_error_discard = DEFAULT_RX_ERROR_DISCARD;
 cfg->send_idle_enable = DEFAULT_SEND_IDLE_ENABLE;
 cfg->no_length_check_enable = DEFAULT_NO_LENGTH_CHECK_ENABLE;
 cfg->lgth_check_nostdr = DEFAULT_LGTH_CHECK_NOSTDR;
 cfg->time_stamp_enable = DEFAULT_TIME_STAMP_ENABLE;
 cfg->tx_ipg_length = DEFAULT_TX_IPG_LENGTH;
 cfg->max_frame_length = DEFAULT_MAX_FRAME_LENGTH;
 cfg->pause_quant = DEFAULT_PAUSE_QUANT;



}

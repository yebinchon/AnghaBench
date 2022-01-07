
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_cfg {int wake_on_lan; int tbi_phy_addr; int maximum_frame; int back_to_back_ipg; int min_ifg_enforcement; int non_back_to_back_ipg2; int non_back_to_back_ipg1; int rx_promisc; int tx_pause_time_extd; int rx_group_hash_exd; int tx_flow; int rx_flow; int tx_time_stamp_en; int rx_time_stamp_en; int loopback; int tx_preamble; int rx_preamble; int preamble_len; int ptp_exception_en; int ptp_tsu_en; int rx_prepend; int tbipa; int tx_pause_time; int rx_ctrl_acc; int tx_crc; int tx_pad_crc; int rx_len_check; int rx_short_frm; int rx_drop_bcast; int halfdup_alt_backoff_en; int halfdup_alt_backoff_val; int halfdup_bp_no_backoff; int halfdup_no_backoff; int halfdup_excess_defer; int halfdup_coll_window; int halfdup_retransmit; int halfdup_on; } ;


 int DEFAULT_BACK_TO_BACK_IPG ;
 int DEFAULT_HALFDUP_ALT_BACKOFF_EN ;
 int DEFAULT_HALFDUP_ALT_BACKOFF_VAL ;
 int DEFAULT_HALFDUP_BP_NO_BACKOFF ;
 int DEFAULT_HALFDUP_COLL_WINDOW ;
 int DEFAULT_HALFDUP_EXCESS_DEFER ;
 int DEFAULT_HALFDUP_NO_BACKOFF ;
 int DEFAULT_HALFDUP_ON ;
 int DEFAULT_HALFDUP_RETRANSMIT ;
 int DEFAULT_LOOPBACK ;
 int DEFAULT_MAXIMUM_FRAME ;
 int DEFAULT_MIN_IFG_ENFORCEMENT ;
 int DEFAULT_NON_BACK_TO_BACK_IPG1 ;
 int DEFAULT_NON_BACK_TO_BACK_IPG2 ;
 int DEFAULT_PREAMBLE_LEN ;
 int DEFAULT_PTP_EXCEPTION_EN ;
 int DEFAULT_PTP_TSU_EN ;
 int DEFAULT_RX_CTRL_ACC ;
 int DEFAULT_RX_DROP_BCAST ;
 int DEFAULT_RX_FLOW ;
 int DEFAULT_RX_GROUP_HASH_EXD ;
 int DEFAULT_RX_LEN_CHECK ;
 int DEFAULT_RX_PREAMBLE ;
 int DEFAULT_RX_PREPEND ;
 int DEFAULT_RX_PROMISC ;
 int DEFAULT_RX_SHORT_FRM ;
 int DEFAULT_RX_TIME_STAMP_EN ;
 int DEFAULT_TBIPA ;
 int DEFAULT_TBI_PHY_ADDR ;
 int DEFAULT_TX_CRC ;
 int DEFAULT_TX_FLOW ;
 int DEFAULT_TX_PAD_CRC ;
 int DEFAULT_TX_PAUSE_TIME ;
 int DEFAULT_TX_PAUSE_TIME_EXTD ;
 int DEFAULT_TX_PREAMBLE ;
 int DEFAULT_TX_TIME_STAMP_EN ;
 int DEFAULT_WAKE_ON_LAN ;

void fman_dtsec_defconfig(struct dtsec_cfg *cfg)
{
 cfg->halfdup_on = DEFAULT_HALFDUP_ON;
 cfg->halfdup_retransmit = DEFAULT_HALFDUP_RETRANSMIT;
 cfg->halfdup_coll_window = DEFAULT_HALFDUP_COLL_WINDOW;
 cfg->halfdup_excess_defer = DEFAULT_HALFDUP_EXCESS_DEFER;
 cfg->halfdup_no_backoff = DEFAULT_HALFDUP_NO_BACKOFF;
 cfg->halfdup_bp_no_backoff = DEFAULT_HALFDUP_BP_NO_BACKOFF;
 cfg->halfdup_alt_backoff_val = DEFAULT_HALFDUP_ALT_BACKOFF_VAL;
 cfg->halfdup_alt_backoff_en = DEFAULT_HALFDUP_ALT_BACKOFF_EN;
 cfg->rx_drop_bcast = DEFAULT_RX_DROP_BCAST;
 cfg->rx_short_frm = DEFAULT_RX_SHORT_FRM;
 cfg->rx_len_check = DEFAULT_RX_LEN_CHECK;
 cfg->tx_pad_crc = DEFAULT_TX_PAD_CRC;
 cfg->tx_crc = DEFAULT_TX_CRC;
 cfg->rx_ctrl_acc = DEFAULT_RX_CTRL_ACC;
 cfg->tx_pause_time = DEFAULT_TX_PAUSE_TIME;
 cfg->tbipa = DEFAULT_TBIPA;
 cfg->rx_prepend = DEFAULT_RX_PREPEND;
 cfg->ptp_tsu_en = DEFAULT_PTP_TSU_EN;
 cfg->ptp_exception_en = DEFAULT_PTP_EXCEPTION_EN;
 cfg->preamble_len = DEFAULT_PREAMBLE_LEN;
 cfg->rx_preamble = DEFAULT_RX_PREAMBLE;
 cfg->tx_preamble = DEFAULT_TX_PREAMBLE;
 cfg->loopback = DEFAULT_LOOPBACK;
 cfg->rx_time_stamp_en = DEFAULT_RX_TIME_STAMP_EN;
 cfg->tx_time_stamp_en = DEFAULT_TX_TIME_STAMP_EN;
 cfg->rx_flow = DEFAULT_RX_FLOW;
 cfg->tx_flow = DEFAULT_TX_FLOW;
 cfg->rx_group_hash_exd = DEFAULT_RX_GROUP_HASH_EXD;
 cfg->tx_pause_time_extd = DEFAULT_TX_PAUSE_TIME_EXTD;
 cfg->rx_promisc = DEFAULT_RX_PROMISC;
 cfg->non_back_to_back_ipg1 = DEFAULT_NON_BACK_TO_BACK_IPG1;
 cfg->non_back_to_back_ipg2 = DEFAULT_NON_BACK_TO_BACK_IPG2;
 cfg->min_ifg_enforcement = DEFAULT_MIN_IFG_ENFORCEMENT;
 cfg->back_to_back_ipg = DEFAULT_BACK_TO_BACK_IPG;
 cfg->maximum_frame = DEFAULT_MAXIMUM_FRAME;
 cfg->tbi_phy_addr = DEFAULT_TBI_PHY_ADDR;
 cfg->wake_on_lan = DEFAULT_WAKE_ON_LAN;
}

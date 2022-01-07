
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int ah_divLnaConfSet; int ah_divLnaConfGet; int ah_btMciDetach; int ah_btMciState; int ah_btMciGetInterrupt; int ah_btMciSendMessage; int ah_btMciSetup; int ah_btCoexEnable; int ah_btCoexDisable; int ah_btCoexSetWeights; int ah_btCoexSetParameter; int ah_btCoexSetBmissThresh; int ah_btCoexSetQcuThresh; int ah_btCoexSetConfig; int ah_btCoexSetInfo; int ah_setChainMasks; int ah_set11nMac2040; int ah_set11nBurstDuration; int ah_clr11nAggr; int ah_set11nAggrLast; int ah_set11nAggrMiddle; int ah_set11nAggrFirst; int ah_set11nTxDesc; int ah_set11nRateScenario; int ah_setupLastTxDesc; int ah_setupFirstTxDesc; int ah_chainTxDesc; int ah_setInterrupts; int ah_getInterrupts; int ah_getPendingInterrupts; int ah_isInterruptPending; int ah_getNextTBTT; int ah_setStationBeaconTimers; int ah_setBeaconTimers; int ah_beaconInit; int ah_getPowerMode; int ah_setPowerMode; int ah_setKeyCacheEntryMac; int ah_setKeyCacheEntry; int ah_isKeyCacheEntryValid; int ah_resetKeyCacheEntry; int ah_getKeyCacheSize; int ah_spectralIsActive; int ah_spectralIsEnabled; int ah_spectralStop; int ah_spectralStart; int ah_spectralGetConfig; int ah_spectralConfigure; int ah_setDfsCacTxQuiet; int ah_get11nExtBusy; int ah_isFastClockEnabled; int ah_procRadarEvent; int ah_getDfsDefaultThresh; int ah_getDfsThresh; int ah_enableDfs; int ah_getMibCycleCounts; int ah_setQuiet; int ah_getCTSTimeout; int ah_setAckTimeout; int ah_getAckTimeout; int ah_getSlotTime; int ah_setSlotTime; int ah_setAntennaSwitch; int ah_getAntennaSwitch; int ah_setDefAntenna; int ah_getDefAntenna; int ah_getRfGain; int ah_detectCardPresent; int ah_setTsf64; int ah_resetTsf; int ah_getTsf64; int ah_getTsf32; int ah_gpioSetIntr; int ah_gpioSet; int ah_gpioGet; int ah_gpioCfgOutput; int ah_gpioCfgInput; int ah_writeAssocid; int ah_setLedState; int ah_setRegulatoryDomain; int ah_setBssIdMask; int ah_getBssIdMask; int ah_setMacAddress; int ah_getMacAddress; int ah_getDiagState; int ah_setCapability; int ah_getCapability; int ah_procMibEvent; int ah_aniPoll; int ah_rxMonitor; int ah_procRxDesc; int ah_setRxFilter; int ah_getRxFilter; int ah_clrMulticastFilterIndex; int ah_setMulticastFilterIndex; int ah_setMulticastFilter; int ah_stopPcuReceive; int ah_startPcuReceive; int ah_stopDmaReceive; int ah_enableReceive; int ah_setRxDP; int ah_getRxDP; int ah_updateTxTrigLevel; int ah_getTxRawTxDesc; int ah_setupTxStatusRing; int ah_getTxDescLinkPtr; int ah_getTxDescLink; int ah_setTxDescLink; int ah_getTxCompletionRates; int ah_getTxIntrQueue; int ah_procTxDesc; int ah_fillTxDesc; int ah_setupXTxDesc; int ah_setupTxDesc; int ah_stopTxDma; int ah_startTxDma; int ah_numTxPending; int ah_setTxDP; int ah_getTxDP; int ah_resetTxQueue; int ah_releaseTxQueue; int ah_getTxQueueProps; int ah_setTxQueueProps; int ah_setupTxQueue; int ah_getChanNoise; int ah_setTxPowerLimit; int ah_resetCalValid; int ah_perCalibrationN; int ah_setPCUConfig; int ah_configPCIE; int ah_disable; int ah_phyDisable; int ah_reset; int ah_getRateTable; int ah_detach; } ;
struct TYPE_2__ {int ah_eepromGet; void* ah_eepromRead; int ah_getChannelEdges; int ah_getWirelessModes; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 int ar9300ClrMulticastFilterIndex ;
 int ar9300GetSlotTime ;
 int ar9300SetChainMasks ;
 int ar9300SetMulticastFilterIndex ;
 int ar9300_ani_poll_freebsd ;
 int ar9300_ani_rxmonitor_freebsd ;
 int ar9300_ant_div_comb_get_config ;
 int ar9300_ant_div_comb_set_config ;
 int ar9300_beacon_set_beacon_timers ;
 int ar9300_bt_coex_config ;
 int ar9300_bt_coex_disable ;
 int ar9300_bt_coex_enable ;
 int ar9300_bt_coex_set_parameter ;
 int ar9300_bt_coex_set_qcu_thresh ;
 int ar9300_bt_coex_set_weights ;
 int ar9300_bt_coex_setup_bmiss_thresh ;
 int ar9300_cac_tx_quiet ;
 int ar9300_clr_11n_aggr ;
 int ar9300_config_pcie_freebsd ;
 int ar9300_configure_spectral_scan ;
 int ar9300_detach ;
 int ar9300_detect_card_present ;
 int ar9300_disable ;
 int ar9300_eeprom_get_freebsd ;
 void* ar9300_eeprom_read_word ;
 int ar9300_enable_dfs ;
 int ar9300_enable_receive ;
 int ar9300_freebsd_beacon_init ;
 int ar9300_freebsd_chain_tx_desc ;
 int ar9300_freebsd_fill_tx_desc ;
 int ar9300_freebsd_get_antenna_switch ;
 int ar9300_freebsd_get_cts_timeout ;
 int ar9300_freebsd_get_desc_link ;
 int ar9300_freebsd_get_mib_cycle_counts ;
 int ar9300_freebsd_get_tx_completion_rates ;
 int ar9300_freebsd_proc_radar_event ;
 int ar9300_freebsd_proc_tx_desc ;
 int ar9300_freebsd_set_11n_rate_scenario ;
 int ar9300_freebsd_set_antenna_switch ;
 int ar9300_freebsd_set_tsf64 ;
 int ar9300_freebsd_set_tx_power_limit ;
 int ar9300_freebsd_setup_11n_desc ;
 int ar9300_freebsd_setup_first_tx_desc ;
 int ar9300_freebsd_setup_last_tx_desc ;
 int ar9300_freebsd_setup_tx_desc ;
 int ar9300_freebsd_setup_x_tx_desc ;
 int ar9300_get_11n_ext_busy ;
 int ar9300_get_ack_timeout ;
 int ar9300_get_bss_id_mask ;
 int ar9300_get_capability ;
 int ar9300_get_channel_edges ;
 int ar9300_get_def_antenna ;
 int ar9300_get_default_dfs_thresh ;
 int ar9300_get_desc_link_ptr ;
 int ar9300_get_dfs_thresh ;
 int ar9300_get_diag_state ;
 int ar9300_get_interrupts ;
 int ar9300_get_key_cache_size ;
 int ar9300_get_mac_address ;
 int ar9300_get_next_tbtt ;
 int ar9300_get_pending_interrupts_freebsd ;
 int ar9300_get_power_mode ;
 int ar9300_get_rate_table ;
 int ar9300_get_raw_tx_desc ;
 int ar9300_get_rfgain ;
 int ar9300_get_rx_dp ;
 int ar9300_get_rx_filter ;
 int ar9300_get_spectral_params ;
 int ar9300_get_tsf32 ;
 int ar9300_get_tsf64 ;
 int ar9300_get_tx_dp ;
 int ar9300_get_tx_intr_queue ;
 int ar9300_get_tx_queue_props ;
 int ar9300_get_wireless_modes ;
 int ar9300_gpio_cfg_input ;
 int ar9300_gpio_cfg_output ;
 int ar9300_gpio_get ;
 int ar9300_gpio_set ;
 int ar9300_gpio_set_intr ;
 int ar9300_is_fast_clock_enabled ;
 int ar9300_is_interrupt_pending ;
 int ar9300_is_key_cache_entry_valid ;
 int ar9300_is_spectral_active ;
 int ar9300_is_spectral_enabled ;
 int ar9300_mci_bt_coex_disable ;
 int ar9300_mci_bt_coex_enable ;
 int ar9300_mci_bt_coex_set_weights ;
 int ar9300_mci_detach ;
 int ar9300_mci_get_interrupt ;
 int ar9300_mci_send_message ;
 int ar9300_mci_setup ;
 int ar9300_mci_state ;
 int ar9300_num_tx_pending ;
 int ar9300_per_calibration_freebsd ;
 int ar9300_phy_disable ;
 int ar9300_proc_rx_desc_freebsd ;
 int ar9300_process_mib_intr ;
 int ar9300_release_tx_queue ;
 int ar9300_reset_cal_valid_freebsd ;
 int ar9300_reset_freebsd ;
 int ar9300_reset_key_cache_entry ;
 int ar9300_reset_tsf ;
 int ar9300_reset_tx_queue ;
 int ar9300_set_11n_aggr_first ;
 int ar9300_set_11n_aggr_last ;
 int ar9300_set_11n_aggr_middle ;
 int ar9300_set_11n_burst_duration ;
 int ar9300_set_11n_mac2040 ;
 int ar9300_set_ack_timeout ;
 int ar9300_set_bss_id_mask ;
 int ar9300_set_bt_coex_info ;
 int ar9300_set_capability ;
 int ar9300_set_def_antenna ;
 int ar9300_set_desc_link ;
 int ar9300_set_interrupts_freebsd ;
 int ar9300_set_key_cache_entry ;
 int ar9300_set_key_cache_entry_mac ;
 int ar9300_set_led_state ;
 int ar9300_set_mac_address ;
 int ar9300_set_multicast_filter ;
 int ar9300_set_pcu_config ;
 int ar9300_set_power_mode ;
 int ar9300_set_quiet ;
 int ar9300_set_regulatory_domain ;
 int ar9300_set_rx_dp ;
 int ar9300_set_rx_filter ;
 int ar9300_set_slot_time ;
 int ar9300_set_sta_beacon_timers ;
 int ar9300_set_tx_dp ;
 int ar9300_set_tx_queue_props ;
 int ar9300_setup_tx_queue ;
 int ar9300_setup_tx_status_ring ;
 int ar9300_start_pcu_receive ;
 int ar9300_start_spectral_scan ;
 int ar9300_start_tx_dma ;
 int ar9300_stop_dma_receive_freebsd ;
 int ar9300_stop_pcu_receive ;
 int ar9300_stop_spectral_scan ;
 int ar9300_stop_tx_dma_freebsd ;
 int ar9300_update_tx_trig_level ;
 int ar9300_write_associd ;
 int ath_hal_getChanNoise ;

void
ar9300_attach_freebsd_ops(struct ath_hal *ah)
{


 ah->ah_detach = ar9300_detach;
 ah->ah_getRateTable = ar9300_get_rate_table;


 ah->ah_reset = ar9300_reset_freebsd;
 ah->ah_phyDisable = ar9300_phy_disable;
 ah->ah_disable = ar9300_disable;
 ah->ah_configPCIE = ar9300_config_pcie_freebsd;

 ah->ah_setPCUConfig = ar9300_set_pcu_config;

 ah->ah_perCalibrationN = ar9300_per_calibration_freebsd;
 ah->ah_resetCalValid = ar9300_reset_cal_valid_freebsd;
 ah->ah_setTxPowerLimit = ar9300_freebsd_set_tx_power_limit;
 ah->ah_getChanNoise = ath_hal_getChanNoise;


 ah->ah_setupTxQueue = ar9300_setup_tx_queue;
 ah->ah_setTxQueueProps = ar9300_set_tx_queue_props;
 ah->ah_getTxQueueProps = ar9300_get_tx_queue_props;
 ah->ah_releaseTxQueue = ar9300_release_tx_queue;
 ah->ah_resetTxQueue = ar9300_reset_tx_queue;
 ah->ah_getTxDP = ar9300_get_tx_dp;
 ah->ah_setTxDP = ar9300_set_tx_dp;
 ah->ah_numTxPending = ar9300_num_tx_pending;
 ah->ah_startTxDma = ar9300_start_tx_dma;
 ah->ah_stopTxDma = ar9300_stop_tx_dma_freebsd;
 ah->ah_setupTxDesc = ar9300_freebsd_setup_tx_desc;
 ah->ah_setupXTxDesc = ar9300_freebsd_setup_x_tx_desc;
 ah->ah_fillTxDesc = ar9300_freebsd_fill_tx_desc;
 ah->ah_procTxDesc = ar9300_freebsd_proc_tx_desc;
 ah->ah_getTxIntrQueue = ar9300_get_tx_intr_queue;

 ah->ah_getTxCompletionRates = ar9300_freebsd_get_tx_completion_rates;
 ah->ah_setTxDescLink = ar9300_set_desc_link;
 ah->ah_getTxDescLink = ar9300_freebsd_get_desc_link;
 ah->ah_getTxDescLinkPtr = ar9300_get_desc_link_ptr;
 ah->ah_setupTxStatusRing = ar9300_setup_tx_status_ring;
 ah->ah_getTxRawTxDesc = ar9300_get_raw_tx_desc;
 ah->ah_updateTxTrigLevel = ar9300_update_tx_trig_level;


 ah->ah_getRxDP = ar9300_get_rx_dp;
 ah->ah_setRxDP = ar9300_set_rx_dp;
 ah->ah_enableReceive = ar9300_enable_receive;
 ah->ah_stopDmaReceive = ar9300_stop_dma_receive_freebsd;
 ah->ah_startPcuReceive = ar9300_start_pcu_receive;
 ah->ah_stopPcuReceive = ar9300_stop_pcu_receive;
 ah->ah_setMulticastFilter = ar9300_set_multicast_filter;
 ah->ah_setMulticastFilterIndex = ar9300SetMulticastFilterIndex;
 ah->ah_clrMulticastFilterIndex = ar9300ClrMulticastFilterIndex;
 ah->ah_getRxFilter = ar9300_get_rx_filter;
 ah->ah_setRxFilter = ar9300_set_rx_filter;

 ah->ah_procRxDesc = ar9300_proc_rx_desc_freebsd;
 ah->ah_rxMonitor = ar9300_ani_rxmonitor_freebsd;
 ah->ah_aniPoll = ar9300_ani_poll_freebsd;
 ah->ah_procMibEvent = ar9300_process_mib_intr;


 ah->ah_getCapability = ar9300_get_capability;
 ah->ah_setCapability = ar9300_set_capability;
 ah->ah_getDiagState = ar9300_get_diag_state;
 ah->ah_getMacAddress = ar9300_get_mac_address;
 ah->ah_setMacAddress = ar9300_set_mac_address;
 ah->ah_getBssIdMask = ar9300_get_bss_id_mask;
 ah->ah_setBssIdMask = ar9300_set_bss_id_mask;
 ah->ah_setRegulatoryDomain = ar9300_set_regulatory_domain;
 ah->ah_setLedState = ar9300_set_led_state;
 ah->ah_writeAssocid = ar9300_write_associd;
 ah->ah_gpioCfgInput = ar9300_gpio_cfg_input;
 ah->ah_gpioCfgOutput = ar9300_gpio_cfg_output;
 ah->ah_gpioGet = ar9300_gpio_get;
 ah->ah_gpioSet = ar9300_gpio_set;
 ah->ah_gpioSetIntr = ar9300_gpio_set_intr;


 ah->ah_getTsf32 = ar9300_get_tsf32;
 ah->ah_getTsf64 = ar9300_get_tsf64;
 ah->ah_resetTsf = ar9300_reset_tsf;
 ah->ah_setTsf64 = ar9300_freebsd_set_tsf64;
 ah->ah_detectCardPresent = ar9300_detect_card_present;

 ah->ah_getRfGain = ar9300_get_rfgain;
 ah->ah_getDefAntenna = ar9300_get_def_antenna;
 ah->ah_setDefAntenna = ar9300_set_def_antenna;
 ah->ah_getAntennaSwitch = ar9300_freebsd_get_antenna_switch;
 ah->ah_setAntennaSwitch = ar9300_freebsd_set_antenna_switch;


 ah->ah_setSlotTime = ar9300_set_slot_time;
 ah->ah_getSlotTime = ar9300GetSlotTime;
 ah->ah_getAckTimeout = ar9300_get_ack_timeout;
 ah->ah_setAckTimeout = ar9300_set_ack_timeout;


 ah->ah_getCTSTimeout = ar9300_freebsd_get_cts_timeout;


 ah->ah_setQuiet = ar9300_set_quiet;
 ah->ah_getMibCycleCounts = ar9300_freebsd_get_mib_cycle_counts;


 ah->ah_enableDfs = ar9300_enable_dfs;
 ah->ah_getDfsThresh = ar9300_get_dfs_thresh;
 ah->ah_getDfsDefaultThresh = ar9300_get_default_dfs_thresh;
 ah->ah_procRadarEvent = ar9300_freebsd_proc_radar_event;
 ah->ah_isFastClockEnabled = ar9300_is_fast_clock_enabled;
 ah->ah_get11nExtBusy = ar9300_get_11n_ext_busy;
 ah->ah_setDfsCacTxQuiet = ar9300_cac_tx_quiet;


 ah->ah_spectralConfigure = ar9300_configure_spectral_scan;
 ah->ah_spectralGetConfig = ar9300_get_spectral_params;
 ah->ah_spectralStart = ar9300_start_spectral_scan;
 ah->ah_spectralStop = ar9300_stop_spectral_scan;
 ah->ah_spectralIsEnabled = ar9300_is_spectral_enabled;
 ah->ah_spectralIsActive = ar9300_is_spectral_active;


 ah->ah_getKeyCacheSize = ar9300_get_key_cache_size;
 ah->ah_resetKeyCacheEntry = ar9300_reset_key_cache_entry;
 ah->ah_isKeyCacheEntryValid = ar9300_is_key_cache_entry_valid;
 ah->ah_setKeyCacheEntry = ar9300_set_key_cache_entry;
 ah->ah_setKeyCacheEntryMac = ar9300_set_key_cache_entry_mac;


 ah->ah_setPowerMode = ar9300_set_power_mode;
 ah->ah_getPowerMode = ar9300_get_power_mode;



 ah->ah_beaconInit = ar9300_freebsd_beacon_init;
 ah->ah_setBeaconTimers = ar9300_beacon_set_beacon_timers;
 ah->ah_setStationBeaconTimers = ar9300_set_sta_beacon_timers;

 ah->ah_getNextTBTT = ar9300_get_next_tbtt;


 ah->ah_isInterruptPending = ar9300_is_interrupt_pending;
 ah->ah_getPendingInterrupts = ar9300_get_pending_interrupts_freebsd;
 ah->ah_getInterrupts = ar9300_get_interrupts;
 ah->ah_setInterrupts = ar9300_set_interrupts_freebsd;



 AH_PRIVATE(ah)->ah_eepromRead = ar9300_eeprom_read_word;

 AH_PRIVATE(ah)->ah_getWirelessModes = ar9300_get_wireless_modes;
 AH_PRIVATE(ah)->ah_getChannelEdges = ar9300_get_channel_edges;

 AH_PRIVATE(ah)->ah_eepromRead = ar9300_eeprom_read_word;




 AH_PRIVATE(ah)->ah_eepromGet = ar9300_eeprom_get_freebsd;





 ah->ah_chainTxDesc = ar9300_freebsd_chain_tx_desc;
 ah->ah_setupFirstTxDesc= ar9300_freebsd_setup_first_tx_desc;
 ah->ah_setupLastTxDesc = ar9300_freebsd_setup_last_tx_desc;
 ah->ah_set11nRateScenario = ar9300_freebsd_set_11n_rate_scenario;
 ah->ah_set11nTxDesc = ar9300_freebsd_setup_11n_desc;
 ah->ah_set11nAggrFirst = ar9300_set_11n_aggr_first;
 ah->ah_set11nAggrMiddle = ar9300_set_11n_aggr_middle;
 ah->ah_set11nAggrLast = ar9300_set_11n_aggr_last;
 ah->ah_clr11nAggr = ar9300_clr_11n_aggr;
 ah->ah_set11nBurstDuration = ar9300_set_11n_burst_duration;

 ah->ah_set11nMac2040 = ar9300_set_11n_mac2040;
 ah->ah_setChainMasks = ar9300SetChainMasks;




 ah->ah_btCoexSetInfo = ar9300_set_bt_coex_info;
 ah->ah_btCoexSetConfig = ar9300_bt_coex_config;
 ah->ah_btCoexSetQcuThresh = ar9300_bt_coex_set_qcu_thresh;
 ah->ah_btCoexSetWeights = ar9300_bt_coex_set_weights;
 ah->ah_btCoexSetBmissThresh = ar9300_bt_coex_setup_bmiss_thresh;
 ah->ah_btCoexSetParameter = ar9300_bt_coex_set_parameter;
 ah->ah_btCoexDisable = ar9300_bt_coex_disable;
 ah->ah_btCoexEnable = ar9300_bt_coex_enable;


 if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {
  ah->ah_btCoexSetWeights = ar9300_mci_bt_coex_set_weights;
  ah->ah_btCoexDisable = ar9300_mci_bt_coex_disable;
  ah->ah_btCoexEnable = ar9300_mci_bt_coex_enable;
 }
 ah->ah_btMciSetup = ar9300_mci_setup;
 ah->ah_btMciSendMessage = ar9300_mci_send_message;
 ah->ah_btMciGetInterrupt = ar9300_mci_get_interrupt;
 ah->ah_btMciState = ar9300_mci_state;
 ah->ah_btMciDetach = ar9300_mci_detach;


 ah->ah_divLnaConfGet = ar9300_ant_div_comb_get_config;
 ah->ah_divLnaConfSet = ar9300_ant_div_comb_set_config;
}

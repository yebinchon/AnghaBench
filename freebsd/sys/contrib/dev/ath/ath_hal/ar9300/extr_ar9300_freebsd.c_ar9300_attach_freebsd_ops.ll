; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_attach_freebsd_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_attach_freebsd_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@ar9300_detach = common dso_local global i32 0, align 4
@ar9300_get_rate_table = common dso_local global i32 0, align 4
@ar9300_reset_freebsd = common dso_local global i32 0, align 4
@ar9300_phy_disable = common dso_local global i32 0, align 4
@ar9300_disable = common dso_local global i32 0, align 4
@ar9300_config_pcie_freebsd = common dso_local global i32 0, align 4
@ar9300_set_pcu_config = common dso_local global i32 0, align 4
@ar9300_per_calibration_freebsd = common dso_local global i32 0, align 4
@ar9300_reset_cal_valid_freebsd = common dso_local global i32 0, align 4
@ar9300_freebsd_set_tx_power_limit = common dso_local global i32 0, align 4
@ath_hal_getChanNoise = common dso_local global i32 0, align 4
@ar9300_setup_tx_queue = common dso_local global i32 0, align 4
@ar9300_set_tx_queue_props = common dso_local global i32 0, align 4
@ar9300_get_tx_queue_props = common dso_local global i32 0, align 4
@ar9300_release_tx_queue = common dso_local global i32 0, align 4
@ar9300_reset_tx_queue = common dso_local global i32 0, align 4
@ar9300_get_tx_dp = common dso_local global i32 0, align 4
@ar9300_set_tx_dp = common dso_local global i32 0, align 4
@ar9300_num_tx_pending = common dso_local global i32 0, align 4
@ar9300_start_tx_dma = common dso_local global i32 0, align 4
@ar9300_stop_tx_dma_freebsd = common dso_local global i32 0, align 4
@ar9300_freebsd_setup_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_setup_x_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_fill_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_proc_tx_desc = common dso_local global i32 0, align 4
@ar9300_get_tx_intr_queue = common dso_local global i32 0, align 4
@ar9300_freebsd_get_tx_completion_rates = common dso_local global i32 0, align 4
@ar9300_set_desc_link = common dso_local global i32 0, align 4
@ar9300_freebsd_get_desc_link = common dso_local global i32 0, align 4
@ar9300_get_desc_link_ptr = common dso_local global i32 0, align 4
@ar9300_setup_tx_status_ring = common dso_local global i32 0, align 4
@ar9300_get_raw_tx_desc = common dso_local global i32 0, align 4
@ar9300_update_tx_trig_level = common dso_local global i32 0, align 4
@ar9300_get_rx_dp = common dso_local global i32 0, align 4
@ar9300_set_rx_dp = common dso_local global i32 0, align 4
@ar9300_enable_receive = common dso_local global i32 0, align 4
@ar9300_stop_dma_receive_freebsd = common dso_local global i32 0, align 4
@ar9300_start_pcu_receive = common dso_local global i32 0, align 4
@ar9300_stop_pcu_receive = common dso_local global i32 0, align 4
@ar9300_set_multicast_filter = common dso_local global i32 0, align 4
@ar9300SetMulticastFilterIndex = common dso_local global i32 0, align 4
@ar9300ClrMulticastFilterIndex = common dso_local global i32 0, align 4
@ar9300_get_rx_filter = common dso_local global i32 0, align 4
@ar9300_set_rx_filter = common dso_local global i32 0, align 4
@ar9300_proc_rx_desc_freebsd = common dso_local global i32 0, align 4
@ar9300_ani_rxmonitor_freebsd = common dso_local global i32 0, align 4
@ar9300_ani_poll_freebsd = common dso_local global i32 0, align 4
@ar9300_process_mib_intr = common dso_local global i32 0, align 4
@ar9300_get_capability = common dso_local global i32 0, align 4
@ar9300_set_capability = common dso_local global i32 0, align 4
@ar9300_get_diag_state = common dso_local global i32 0, align 4
@ar9300_get_mac_address = common dso_local global i32 0, align 4
@ar9300_set_mac_address = common dso_local global i32 0, align 4
@ar9300_get_bss_id_mask = common dso_local global i32 0, align 4
@ar9300_set_bss_id_mask = common dso_local global i32 0, align 4
@ar9300_set_regulatory_domain = common dso_local global i32 0, align 4
@ar9300_set_led_state = common dso_local global i32 0, align 4
@ar9300_write_associd = common dso_local global i32 0, align 4
@ar9300_gpio_cfg_input = common dso_local global i32 0, align 4
@ar9300_gpio_cfg_output = common dso_local global i32 0, align 4
@ar9300_gpio_get = common dso_local global i32 0, align 4
@ar9300_gpio_set = common dso_local global i32 0, align 4
@ar9300_gpio_set_intr = common dso_local global i32 0, align 4
@ar9300_get_tsf32 = common dso_local global i32 0, align 4
@ar9300_get_tsf64 = common dso_local global i32 0, align 4
@ar9300_reset_tsf = common dso_local global i32 0, align 4
@ar9300_freebsd_set_tsf64 = common dso_local global i32 0, align 4
@ar9300_detect_card_present = common dso_local global i32 0, align 4
@ar9300_get_rfgain = common dso_local global i32 0, align 4
@ar9300_get_def_antenna = common dso_local global i32 0, align 4
@ar9300_set_def_antenna = common dso_local global i32 0, align 4
@ar9300_freebsd_get_antenna_switch = common dso_local global i32 0, align 4
@ar9300_freebsd_set_antenna_switch = common dso_local global i32 0, align 4
@ar9300_set_slot_time = common dso_local global i32 0, align 4
@ar9300GetSlotTime = common dso_local global i32 0, align 4
@ar9300_get_ack_timeout = common dso_local global i32 0, align 4
@ar9300_set_ack_timeout = common dso_local global i32 0, align 4
@ar9300_freebsd_get_cts_timeout = common dso_local global i32 0, align 4
@ar9300_set_quiet = common dso_local global i32 0, align 4
@ar9300_freebsd_get_mib_cycle_counts = common dso_local global i32 0, align 4
@ar9300_enable_dfs = common dso_local global i32 0, align 4
@ar9300_get_dfs_thresh = common dso_local global i32 0, align 4
@ar9300_get_default_dfs_thresh = common dso_local global i32 0, align 4
@ar9300_freebsd_proc_radar_event = common dso_local global i32 0, align 4
@ar9300_is_fast_clock_enabled = common dso_local global i32 0, align 4
@ar9300_get_11n_ext_busy = common dso_local global i32 0, align 4
@ar9300_cac_tx_quiet = common dso_local global i32 0, align 4
@ar9300_configure_spectral_scan = common dso_local global i32 0, align 4
@ar9300_get_spectral_params = common dso_local global i32 0, align 4
@ar9300_start_spectral_scan = common dso_local global i32 0, align 4
@ar9300_stop_spectral_scan = common dso_local global i32 0, align 4
@ar9300_is_spectral_enabled = common dso_local global i32 0, align 4
@ar9300_is_spectral_active = common dso_local global i32 0, align 4
@ar9300_get_key_cache_size = common dso_local global i32 0, align 4
@ar9300_reset_key_cache_entry = common dso_local global i32 0, align 4
@ar9300_is_key_cache_entry_valid = common dso_local global i32 0, align 4
@ar9300_set_key_cache_entry = common dso_local global i32 0, align 4
@ar9300_set_key_cache_entry_mac = common dso_local global i32 0, align 4
@ar9300_set_power_mode = common dso_local global i32 0, align 4
@ar9300_get_power_mode = common dso_local global i32 0, align 4
@ar9300_freebsd_beacon_init = common dso_local global i32 0, align 4
@ar9300_beacon_set_beacon_timers = common dso_local global i32 0, align 4
@ar9300_set_sta_beacon_timers = common dso_local global i32 0, align 4
@ar9300_get_next_tbtt = common dso_local global i32 0, align 4
@ar9300_is_interrupt_pending = common dso_local global i32 0, align 4
@ar9300_get_pending_interrupts_freebsd = common dso_local global i32 0, align 4
@ar9300_get_interrupts = common dso_local global i32 0, align 4
@ar9300_set_interrupts_freebsd = common dso_local global i32 0, align 4
@ar9300_eeprom_read_word = common dso_local global i8* null, align 8
@ar9300_get_wireless_modes = common dso_local global i32 0, align 4
@ar9300_get_channel_edges = common dso_local global i32 0, align 4
@ar9300_eeprom_get_freebsd = common dso_local global i32 0, align 4
@ar9300_freebsd_chain_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_setup_first_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_setup_last_tx_desc = common dso_local global i32 0, align 4
@ar9300_freebsd_set_11n_rate_scenario = common dso_local global i32 0, align 4
@ar9300_freebsd_setup_11n_desc = common dso_local global i32 0, align 4
@ar9300_set_11n_aggr_first = common dso_local global i32 0, align 4
@ar9300_set_11n_aggr_middle = common dso_local global i32 0, align 4
@ar9300_set_11n_aggr_last = common dso_local global i32 0, align 4
@ar9300_clr_11n_aggr = common dso_local global i32 0, align 4
@ar9300_set_11n_burst_duration = common dso_local global i32 0, align 4
@ar9300_set_11n_mac2040 = common dso_local global i32 0, align 4
@ar9300SetChainMasks = common dso_local global i32 0, align 4
@ar9300_set_bt_coex_info = common dso_local global i32 0, align 4
@ar9300_bt_coex_config = common dso_local global i32 0, align 4
@ar9300_bt_coex_set_qcu_thresh = common dso_local global i32 0, align 4
@ar9300_bt_coex_set_weights = common dso_local global i32 0, align 4
@ar9300_bt_coex_setup_bmiss_thresh = common dso_local global i32 0, align 4
@ar9300_bt_coex_set_parameter = common dso_local global i32 0, align 4
@ar9300_bt_coex_disable = common dso_local global i32 0, align 4
@ar9300_bt_coex_enable = common dso_local global i32 0, align 4
@ar9300_mci_bt_coex_set_weights = common dso_local global i32 0, align 4
@ar9300_mci_bt_coex_disable = common dso_local global i32 0, align 4
@ar9300_mci_bt_coex_enable = common dso_local global i32 0, align 4
@ar9300_mci_setup = common dso_local global i32 0, align 4
@ar9300_mci_send_message = common dso_local global i32 0, align 4
@ar9300_mci_get_interrupt = common dso_local global i32 0, align 4
@ar9300_mci_state = common dso_local global i32 0, align 4
@ar9300_mci_detach = common dso_local global i32 0, align 4
@ar9300_ant_div_comb_get_config = common dso_local global i32 0, align 4
@ar9300_ant_div_comb_set_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_attach_freebsd_ops(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load i32, i32* @ar9300_detach, align 4
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %4, i32 0, i32 134
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ar9300_get_rate_table, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %7, i32 0, i32 133
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ar9300_reset_freebsd, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %10, i32 0, i32 132
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ar9300_phy_disable, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %13, i32 0, i32 131
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ar9300_disable, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %16, i32 0, i32 130
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ar9300_config_pcie_freebsd, align 4
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %19, i32 0, i32 129
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ar9300_set_pcu_config, align 4
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %22, i32 0, i32 128
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ar9300_per_calibration_freebsd, align 4
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %25, i32 0, i32 127
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ar9300_reset_cal_valid_freebsd, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %29 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %28, i32 0, i32 126
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ar9300_freebsd_set_tx_power_limit, align 4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %31, i32 0, i32 125
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ath_hal_getChanNoise, align 4
  %34 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %34, i32 0, i32 124
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ar9300_setup_tx_queue, align 4
  %37 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %38 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %37, i32 0, i32 123
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ar9300_set_tx_queue_props, align 4
  %40 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %40, i32 0, i32 122
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ar9300_get_tx_queue_props, align 4
  %43 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %43, i32 0, i32 121
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ar9300_release_tx_queue, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %47 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %46, i32 0, i32 120
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ar9300_reset_tx_queue, align 4
  %49 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %50 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %49, i32 0, i32 119
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ar9300_get_tx_dp, align 4
  %52 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %53 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %52, i32 0, i32 118
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ar9300_set_tx_dp, align 4
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %55, i32 0, i32 117
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ar9300_num_tx_pending, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %59 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %58, i32 0, i32 116
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ar9300_start_tx_dma, align 4
  %61 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %62 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %61, i32 0, i32 115
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ar9300_stop_tx_dma_freebsd, align 4
  %64 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %65 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %64, i32 0, i32 114
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ar9300_freebsd_setup_tx_desc, align 4
  %67 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %68 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %67, i32 0, i32 113
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ar9300_freebsd_setup_x_tx_desc, align 4
  %70 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %71 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %70, i32 0, i32 112
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ar9300_freebsd_fill_tx_desc, align 4
  %73 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %74 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %73, i32 0, i32 111
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ar9300_freebsd_proc_tx_desc, align 4
  %76 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %77 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %76, i32 0, i32 110
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ar9300_get_tx_intr_queue, align 4
  %79 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %79, i32 0, i32 109
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @ar9300_freebsd_get_tx_completion_rates, align 4
  %82 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %83 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %82, i32 0, i32 108
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ar9300_set_desc_link, align 4
  %85 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %86 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %85, i32 0, i32 107
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ar9300_freebsd_get_desc_link, align 4
  %88 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %88, i32 0, i32 106
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ar9300_get_desc_link_ptr, align 4
  %91 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %92 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %91, i32 0, i32 105
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ar9300_setup_tx_status_ring, align 4
  %94 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %95 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %94, i32 0, i32 104
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @ar9300_get_raw_tx_desc, align 4
  %97 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %98 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %97, i32 0, i32 103
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @ar9300_update_tx_trig_level, align 4
  %100 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %101 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %100, i32 0, i32 102
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @ar9300_get_rx_dp, align 4
  %103 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %104 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %103, i32 0, i32 101
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @ar9300_set_rx_dp, align 4
  %106 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %107 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %106, i32 0, i32 100
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @ar9300_enable_receive, align 4
  %109 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %110 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %109, i32 0, i32 99
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @ar9300_stop_dma_receive_freebsd, align 4
  %112 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %113 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %112, i32 0, i32 98
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ar9300_start_pcu_receive, align 4
  %115 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %116 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %115, i32 0, i32 97
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @ar9300_stop_pcu_receive, align 4
  %118 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %119 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %118, i32 0, i32 96
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @ar9300_set_multicast_filter, align 4
  %121 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %122 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %121, i32 0, i32 95
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @ar9300SetMulticastFilterIndex, align 4
  %124 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %125 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %124, i32 0, i32 94
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @ar9300ClrMulticastFilterIndex, align 4
  %127 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %128 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %127, i32 0, i32 93
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @ar9300_get_rx_filter, align 4
  %130 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %131 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %130, i32 0, i32 92
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @ar9300_set_rx_filter, align 4
  %133 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %134 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %133, i32 0, i32 91
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @ar9300_proc_rx_desc_freebsd, align 4
  %136 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %137 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %136, i32 0, i32 90
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @ar9300_ani_rxmonitor_freebsd, align 4
  %139 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %140 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %139, i32 0, i32 89
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ar9300_ani_poll_freebsd, align 4
  %142 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %143 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %142, i32 0, i32 88
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @ar9300_process_mib_intr, align 4
  %145 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %146 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %145, i32 0, i32 87
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @ar9300_get_capability, align 4
  %148 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %149 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %148, i32 0, i32 86
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @ar9300_set_capability, align 4
  %151 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %152 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %151, i32 0, i32 85
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @ar9300_get_diag_state, align 4
  %154 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %155 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %154, i32 0, i32 84
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @ar9300_get_mac_address, align 4
  %157 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %158 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %157, i32 0, i32 83
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @ar9300_set_mac_address, align 4
  %160 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %161 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %160, i32 0, i32 82
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @ar9300_get_bss_id_mask, align 4
  %163 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %164 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %163, i32 0, i32 81
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @ar9300_set_bss_id_mask, align 4
  %166 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %167 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %166, i32 0, i32 80
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @ar9300_set_regulatory_domain, align 4
  %169 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %170 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %169, i32 0, i32 79
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @ar9300_set_led_state, align 4
  %172 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %173 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %172, i32 0, i32 78
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @ar9300_write_associd, align 4
  %175 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %176 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %175, i32 0, i32 77
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @ar9300_gpio_cfg_input, align 4
  %178 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %179 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %178, i32 0, i32 76
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @ar9300_gpio_cfg_output, align 4
  %181 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %182 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %181, i32 0, i32 75
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @ar9300_gpio_get, align 4
  %184 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %185 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %184, i32 0, i32 74
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @ar9300_gpio_set, align 4
  %187 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %188 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %187, i32 0, i32 73
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @ar9300_gpio_set_intr, align 4
  %190 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %191 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %190, i32 0, i32 72
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @ar9300_get_tsf32, align 4
  %193 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %194 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %193, i32 0, i32 71
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @ar9300_get_tsf64, align 4
  %196 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %197 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %196, i32 0, i32 70
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @ar9300_reset_tsf, align 4
  %199 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %200 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %199, i32 0, i32 69
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @ar9300_freebsd_set_tsf64, align 4
  %202 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %203 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %202, i32 0, i32 68
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @ar9300_detect_card_present, align 4
  %205 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %206 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %205, i32 0, i32 67
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @ar9300_get_rfgain, align 4
  %208 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %209 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %208, i32 0, i32 66
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @ar9300_get_def_antenna, align 4
  %211 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %212 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %211, i32 0, i32 65
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @ar9300_set_def_antenna, align 4
  %214 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %215 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %214, i32 0, i32 64
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @ar9300_freebsd_get_antenna_switch, align 4
  %217 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %218 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %217, i32 0, i32 63
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @ar9300_freebsd_set_antenna_switch, align 4
  %220 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %221 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %220, i32 0, i32 62
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @ar9300_set_slot_time, align 4
  %223 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %224 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %223, i32 0, i32 61
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @ar9300GetSlotTime, align 4
  %226 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %227 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %226, i32 0, i32 60
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @ar9300_get_ack_timeout, align 4
  %229 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %230 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %229, i32 0, i32 59
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @ar9300_set_ack_timeout, align 4
  %232 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %233 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %232, i32 0, i32 58
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @ar9300_freebsd_get_cts_timeout, align 4
  %235 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %236 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %235, i32 0, i32 57
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @ar9300_set_quiet, align 4
  %238 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %239 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %238, i32 0, i32 56
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @ar9300_freebsd_get_mib_cycle_counts, align 4
  %241 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %242 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %241, i32 0, i32 55
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* @ar9300_enable_dfs, align 4
  %244 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %245 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %244, i32 0, i32 54
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @ar9300_get_dfs_thresh, align 4
  %247 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %248 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %247, i32 0, i32 53
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @ar9300_get_default_dfs_thresh, align 4
  %250 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %251 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %250, i32 0, i32 52
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @ar9300_freebsd_proc_radar_event, align 4
  %253 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %254 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %253, i32 0, i32 51
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @ar9300_is_fast_clock_enabled, align 4
  %256 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %257 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %256, i32 0, i32 50
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* @ar9300_get_11n_ext_busy, align 4
  %259 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %260 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %259, i32 0, i32 49
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @ar9300_cac_tx_quiet, align 4
  %262 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %263 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %262, i32 0, i32 48
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @ar9300_configure_spectral_scan, align 4
  %265 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %266 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %265, i32 0, i32 47
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* @ar9300_get_spectral_params, align 4
  %268 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %269 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %268, i32 0, i32 46
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @ar9300_start_spectral_scan, align 4
  %271 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %272 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %271, i32 0, i32 45
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @ar9300_stop_spectral_scan, align 4
  %274 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %275 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %274, i32 0, i32 44
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* @ar9300_is_spectral_enabled, align 4
  %277 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %278 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %277, i32 0, i32 43
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* @ar9300_is_spectral_active, align 4
  %280 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %281 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %280, i32 0, i32 42
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* @ar9300_get_key_cache_size, align 4
  %283 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %284 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %283, i32 0, i32 41
  store i32 %282, i32* %284, align 4
  %285 = load i32, i32* @ar9300_reset_key_cache_entry, align 4
  %286 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %287 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %286, i32 0, i32 40
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* @ar9300_is_key_cache_entry_valid, align 4
  %289 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %290 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %289, i32 0, i32 39
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* @ar9300_set_key_cache_entry, align 4
  %292 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %293 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %292, i32 0, i32 38
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @ar9300_set_key_cache_entry_mac, align 4
  %295 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %296 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %295, i32 0, i32 37
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* @ar9300_set_power_mode, align 4
  %298 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %299 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %298, i32 0, i32 36
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* @ar9300_get_power_mode, align 4
  %301 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %302 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %301, i32 0, i32 35
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @ar9300_freebsd_beacon_init, align 4
  %304 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %305 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %304, i32 0, i32 34
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* @ar9300_beacon_set_beacon_timers, align 4
  %307 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %308 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %307, i32 0, i32 33
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* @ar9300_set_sta_beacon_timers, align 4
  %310 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %311 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %310, i32 0, i32 32
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* @ar9300_get_next_tbtt, align 4
  %313 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %314 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %313, i32 0, i32 31
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @ar9300_is_interrupt_pending, align 4
  %316 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %317 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %316, i32 0, i32 30
  store i32 %315, i32* %317, align 4
  %318 = load i32, i32* @ar9300_get_pending_interrupts_freebsd, align 4
  %319 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %320 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %319, i32 0, i32 29
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* @ar9300_get_interrupts, align 4
  %322 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %323 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %322, i32 0, i32 28
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* @ar9300_set_interrupts_freebsd, align 4
  %325 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %326 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %325, i32 0, i32 27
  store i32 %324, i32* %326, align 4
  %327 = load i8*, i8** @ar9300_eeprom_read_word, align 8
  %328 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %329 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %328)
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 1
  store i8* %327, i8** %330, align 8
  %331 = load i32, i32* @ar9300_get_wireless_modes, align 4
  %332 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %333 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %332)
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 3
  store i32 %331, i32* %334, align 4
  %335 = load i32, i32* @ar9300_get_channel_edges, align 4
  %336 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %337 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %336)
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 2
  store i32 %335, i32* %338, align 8
  %339 = load i8*, i8** @ar9300_eeprom_read_word, align 8
  %340 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %341 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %340)
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 1
  store i8* %339, i8** %342, align 8
  %343 = load i32, i32* @ar9300_eeprom_get_freebsd, align 4
  %344 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %345 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %344)
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  store i32 %343, i32* %346, align 8
  %347 = load i32, i32* @ar9300_freebsd_chain_tx_desc, align 4
  %348 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %349 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %348, i32 0, i32 26
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* @ar9300_freebsd_setup_first_tx_desc, align 4
  %351 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %352 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %351, i32 0, i32 25
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* @ar9300_freebsd_setup_last_tx_desc, align 4
  %354 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %355 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %354, i32 0, i32 24
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* @ar9300_freebsd_set_11n_rate_scenario, align 4
  %357 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %358 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %357, i32 0, i32 23
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* @ar9300_freebsd_setup_11n_desc, align 4
  %360 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %361 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %360, i32 0, i32 22
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* @ar9300_set_11n_aggr_first, align 4
  %363 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %364 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %363, i32 0, i32 21
  store i32 %362, i32* %364, align 4
  %365 = load i32, i32* @ar9300_set_11n_aggr_middle, align 4
  %366 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %367 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %366, i32 0, i32 20
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* @ar9300_set_11n_aggr_last, align 4
  %369 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %370 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %369, i32 0, i32 19
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* @ar9300_clr_11n_aggr, align 4
  %372 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %373 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %372, i32 0, i32 18
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* @ar9300_set_11n_burst_duration, align 4
  %375 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %376 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %375, i32 0, i32 17
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* @ar9300_set_11n_mac2040, align 4
  %378 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %379 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %378, i32 0, i32 16
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @ar9300SetChainMasks, align 4
  %381 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %382 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %381, i32 0, i32 15
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* @ar9300_set_bt_coex_info, align 4
  %384 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %385 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %384, i32 0, i32 14
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* @ar9300_bt_coex_config, align 4
  %387 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %388 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %387, i32 0, i32 13
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* @ar9300_bt_coex_set_qcu_thresh, align 4
  %390 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %391 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %390, i32 0, i32 12
  store i32 %389, i32* %391, align 4
  %392 = load i32, i32* @ar9300_bt_coex_set_weights, align 4
  %393 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %394 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %393, i32 0, i32 9
  store i32 %392, i32* %394, align 4
  %395 = load i32, i32* @ar9300_bt_coex_setup_bmiss_thresh, align 4
  %396 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %397 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %396, i32 0, i32 11
  store i32 %395, i32* %397, align 4
  %398 = load i32, i32* @ar9300_bt_coex_set_parameter, align 4
  %399 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %400 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %399, i32 0, i32 10
  store i32 %398, i32* %400, align 4
  %401 = load i32, i32* @ar9300_bt_coex_disable, align 4
  %402 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %403 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %402, i32 0, i32 8
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* @ar9300_bt_coex_enable, align 4
  %405 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %406 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %405, i32 0, i32 7
  store i32 %404, i32* %406, align 4
  %407 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %408 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %1
  %411 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %412 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %410, %1
  %415 = load i32, i32* @ar9300_mci_bt_coex_set_weights, align 4
  %416 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %417 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %416, i32 0, i32 9
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* @ar9300_mci_bt_coex_disable, align 4
  %419 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %420 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %419, i32 0, i32 8
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* @ar9300_mci_bt_coex_enable, align 4
  %422 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %423 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 4
  br label %424

424:                                              ; preds = %414, %410
  %425 = load i32, i32* @ar9300_mci_setup, align 4
  %426 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %427 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %426, i32 0, i32 6
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* @ar9300_mci_send_message, align 4
  %429 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %430 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %429, i32 0, i32 5
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* @ar9300_mci_get_interrupt, align 4
  %432 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %433 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %432, i32 0, i32 4
  store i32 %431, i32* %433, align 4
  %434 = load i32, i32* @ar9300_mci_state, align 4
  %435 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %436 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %435, i32 0, i32 3
  store i32 %434, i32* %436, align 4
  %437 = load i32, i32* @ar9300_mci_detach, align 4
  %438 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %439 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* @ar9300_ant_div_comb_get_config, align 4
  %441 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %442 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %441, i32 0, i32 1
  store i32 %440, i32* %442, align 4
  %443 = load i32, i32* @ar9300_ant_div_comb_set_config, align 4
  %444 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %445 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %444, i32 0, i32 0
  store i32 %443, i32* %445, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

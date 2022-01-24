#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ath_hal_9300 {int /*<<< orphan*/  ah_ini_modes_rxgain; int /*<<< orphan*/  ah_ini_modes_rxgain_bounds; int /*<<< orphan*/  ah_ini_modes_rxgain_xlna; int /*<<< orphan*/  ah_ini_modes_rxgain_bb_postamble; int /*<<< orphan*/  ah_ini_modes_rxgain_bb_core; } ;
struct TYPE_2__ {int ath_hal_ext_lna_ctl_gpio; } ;
struct ath_hal {TYPE_1__ ah_config; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*) ; 
 scalar_t__ FUNC10 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hal*) ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ar9300Common_mixed_rx_gain_table_jupiter_2p0 ; 
 int /*<<< orphan*/  ar9300Common_rx_gain_table_jupiter_2p0 ; 
 int /*<<< orphan*/  ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0 ; 
 int /*<<< orphan*/  ar9300Common_wo_xlna_rx_gain_table_osprey_2p2 ; 
 int /*<<< orphan*/  ar9300_common_mixed_rx_gain_table_jupiter_1p0 ; 
 int /*<<< orphan*/  ar9300_common_rx_gain_table_ar9580_1p0 ; 
 int /*<<< orphan*/  ar9300_common_rx_gain_table_jupiter_1p0 ; 
 int /*<<< orphan*/  ar9300_common_rx_gain_table_osprey_2p2 ; 
 int /*<<< orphan*/  ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0 ; 
 int /*<<< orphan*/  ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0 ; 
 scalar_t__ FUNC16 (struct ath_hal*,int) ; 
 int FUNC17 (struct ath_hal*) ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_hornet1_1 ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_hornet1_2 ; 
 int /*<<< orphan*/  ar9331_common_wo_xlna_rx_gain_hornet1_1 ; 
 int /*<<< orphan*/  ar9331_common_wo_xlna_rx_gain_hornet1_2 ; 
 int /*<<< orphan*/  ar9340Common_rx_gain_table_wasp_1p0 ; 
 int /*<<< orphan*/  ar9340Common_wo_xlna_rx_gain_table_wasp_1p0 ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_core_mix_rxgain ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_postamble_5g_xlna ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_postamble_mix_rxgain ; 
 int /*<<< orphan*/  ar9462_2p0_common_5g_xlna_only_rxgain ; 
 int /*<<< orphan*/  ar9462_2p1_baseband_core_mix_rxgain ; 
 int /*<<< orphan*/  ar9462_2p1_baseband_postamble_5g_xlna ; 
 int /*<<< orphan*/  ar9462_2p1_baseband_postamble_mix_rxgain ; 
 int /*<<< orphan*/  ar9462_2p1_common_5g_xlna_only_rxgain ; 
 int /*<<< orphan*/  ar9462_2p1_common_mixed_rx_gain ; 
 int /*<<< orphan*/  ar9462_2p1_common_rx_gain ; 
 int /*<<< orphan*/  ar9462_2p1_common_wo_xlna_rx_gain ; 
 int /*<<< orphan*/  ar9485Common_wo_xlna_rx_gain_poseidon1_0 ; 
 int /*<<< orphan*/  ar9485_common_wo_xlna_rx_gain_poseidon1_1 ; 
 int /*<<< orphan*/  ar955xCommon_rx_gain_bounds_scorpion_1p0 ; 
 int /*<<< orphan*/  ar955xCommon_rx_gain_table_scorpion_1p0 ; 
 int /*<<< orphan*/  ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0 ; 
 int /*<<< orphan*/  ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0 ; 
 int /*<<< orphan*/  ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0 ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hal*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qca953xCommon_rx_gain_bounds_honeybee_1p0 ; 
 int /*<<< orphan*/  qca953xCommon_rx_gain_table_honeybee_1p0 ; 
 int /*<<< orphan*/  qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0 ; 
 int /*<<< orphan*/  qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0 ; 

void FUNC19(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
//struct ath_hal_private *ahpriv = AH_PRIVATE(ah);
    u_int32_t xlan_gpio_cfg;
    u_int8_t  i;

    if (FUNC10(ah) || FUNC3(ah))
    {
		// this will be called if rxGainTable setting is changed
        if (FUNC16(ah, 1))
            return;
	}

    switch (FUNC17(ah))
    {
    case 2:
        if (FUNC7(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300_common_mixed_rx_gain_table_jupiter_1p0,
                FUNC1(ar9300_common_mixed_rx_gain_table_jupiter_1p0), 2);
            break;
        }
        else if (FUNC8(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300Common_mixed_rx_gain_table_jupiter_2p0,
                FUNC1(ar9300Common_mixed_rx_gain_table_jupiter_2p0), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bb_core,
                ar9462_2p0_baseband_core_mix_rxgain,
                FUNC1(ar9462_2p0_baseband_core_mix_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bb_postamble,
                ar9462_2p0_baseband_postamble_mix_rxgain,
                FUNC1(ar9462_2p0_baseband_postamble_mix_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p0_baseband_postamble_5g_xlna,
                FUNC1(ar9462_2p0_baseband_postamble_5g_xlna), 2);
            break;
        }
        else if (FUNC9(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9462_2p1_common_mixed_rx_gain,
                FUNC1(ar9462_2p1_common_mixed_rx_gain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bb_core,
                ar9462_2p1_baseband_core_mix_rxgain,
                FUNC1(ar9462_2p1_baseband_core_mix_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bb_postamble,
                ar9462_2p1_baseband_postamble_mix_rxgain,
                FUNC1(ar9462_2p1_baseband_postamble_mix_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p1_baseband_postamble_5g_xlna,
                FUNC1(ar9462_2p1_baseband_postamble_5g_xlna), 2);

            break;
        }
    case 3:
        if (FUNC9(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_5g_xlna_only_rxgain,
                FUNC1(ar9462_2p1_common_5g_xlna_only_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p1_baseband_postamble_5g_xlna,
                FUNC1(ar9462_2p1_baseband_postamble_5g_xlna), 2);
        } else if (FUNC8(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9462_2p0_common_5g_xlna_only_rxgain,
                FUNC1(ar9462_2p0_common_5g_xlna_only_rxgain), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p0_baseband_postamble_5g_xlna,
                FUNC1(ar9462_2p0_baseband_postamble_5g_xlna), 2);
        }
        break;
    case 0:
    default:
        if (FUNC6(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9331_common_rx_gain_hornet1_2, 
                FUNC1(ar9331_common_rx_gain_hornet1_2), 2);
        } else if (FUNC5(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9331_common_rx_gain_hornet1_1, 
                FUNC1(ar9331_common_rx_gain_hornet1_1), 2);
        } else if (FUNC12(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9485_common_wo_xlna_rx_gain_poseidon1_1,
                FUNC1(ar9485_common_wo_xlna_rx_gain_poseidon1_1), 2);
            /* XXX FreeBSD: this needs to be revisited!! */
            xlan_gpio_cfg = ah->ah_config.ath_hal_ext_lna_ctl_gpio;
            if (xlan_gpio_cfg) {
                for (i = 0; i < 32; i++) {
                    if (xlan_gpio_cfg & (1 << i)) {
                        /*
                         * XXX FreeBSD: definitely make sure this
                         * results in the correct value being written
                         * to the hardware, or weird crap is very likely
                         * to occur!
                         */
                        FUNC18(ah, i,
                            HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED);
                    }
                }
            }

        } else if (FUNC11(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9485Common_wo_xlna_rx_gain_poseidon1_0,
                FUNC1(ar9485Common_wo_xlna_rx_gain_poseidon1_0), 2);
        } else if (FUNC7(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300_common_rx_gain_table_jupiter_1p0,
                FUNC1(ar9300_common_rx_gain_table_jupiter_1p0), 2);
        } else if (FUNC8(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300Common_rx_gain_table_jupiter_2p0,
                FUNC1(ar9300Common_rx_gain_table_jupiter_2p0), 2);
        } else if (FUNC9(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_rx_gain,
                FUNC1(ar9462_2p1_common_rx_gain), 2);
        } else if (FUNC3(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9300_common_rx_gain_table_ar9580_1p0,
                FUNC1(ar9300_common_rx_gain_table_ar9580_1p0), 2);
        } else if (FUNC14(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9340Common_rx_gain_table_wasp_1p0,
                FUNC1(ar9340Common_rx_gain_table_wasp_1p0), 2);
        } else if (FUNC13(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar955xCommon_rx_gain_table_scorpion_1p0,
                FUNC1(ar955xCommon_rx_gain_table_scorpion_1p0), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bounds,
                ar955xCommon_rx_gain_bounds_scorpion_1p0,
                FUNC1(ar955xCommon_rx_gain_bounds_scorpion_1p0), 5);
        } else if (FUNC4(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                qca953xCommon_rx_gain_table_honeybee_1p0,
                FUNC1(qca953xCommon_rx_gain_table_honeybee_1p0), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bounds,
                qca953xCommon_rx_gain_bounds_honeybee_1p0,
                FUNC1(qca953xCommon_rx_gain_bounds_honeybee_1p0), 5);
        } else {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9300_common_rx_gain_table_osprey_2p2,
                FUNC1(ar9300_common_rx_gain_table_osprey_2p2), 2);
        }
        break;
    case 1:
        if (FUNC6(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9331_common_wo_xlna_rx_gain_hornet1_2,
                FUNC1(ar9331_common_wo_xlna_rx_gain_hornet1_2), 2);
        } else if (FUNC5(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9331_common_wo_xlna_rx_gain_hornet1_1,
                FUNC1(ar9331_common_wo_xlna_rx_gain_hornet1_1), 2);
        } else if (FUNC12(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9485_common_wo_xlna_rx_gain_poseidon1_1,
                FUNC1(ar9485_common_wo_xlna_rx_gain_poseidon1_1), 2);
        } else if (FUNC11(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9485Common_wo_xlna_rx_gain_poseidon1_0,
                FUNC1(ar9485Common_wo_xlna_rx_gain_poseidon1_0), 2);
        } else if (FUNC7(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0,
                FUNC1(ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0),
                2);
        } else if (FUNC8(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0,
                FUNC1(ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0),
                2);
        } else if (FUNC9(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_wo_xlna_rx_gain,
                FUNC1(ar9462_2p1_common_wo_xlna_rx_gain),
                2);
        } else if (FUNC2(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain, 
                ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0,
                FUNC1(ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0),
                2);
        } else if (FUNC3(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0,
                FUNC1(ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0), 2);
        } else if (FUNC14(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9340Common_wo_xlna_rx_gain_table_wasp_1p0,
                FUNC1(ar9340Common_wo_xlna_rx_gain_table_wasp_1p0), 2);
        } else if (FUNC13(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0,
                FUNC1(ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bounds,
                ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0,
                FUNC1(ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0), 5);
        } else if (FUNC4(ah)) {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0,
                FUNC1(qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0), 2);
            FUNC15(&ahp->ah_ini_modes_rxgain_bounds,
                qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0,
                FUNC1(qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0), 5);
        } else {
            FUNC15(&ahp->ah_ini_modes_rxgain,
                ar9300Common_wo_xlna_rx_gain_table_osprey_2p2,
                FUNC1(ar9300Common_wo_xlna_rx_gain_table_osprey_2p2), 2);
        }
        break;
    }
}
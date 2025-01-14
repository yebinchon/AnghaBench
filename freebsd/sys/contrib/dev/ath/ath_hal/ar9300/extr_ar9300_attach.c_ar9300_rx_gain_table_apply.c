
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ath_hal_9300 {int ah_ini_modes_rxgain; int ah_ini_modes_rxgain_bounds; int ah_ini_modes_rxgain_xlna; int ah_ini_modes_rxgain_bb_postamble; int ah_ini_modes_rxgain_bb_core; } ;
struct TYPE_2__ {int ath_hal_ext_lna_ctl_gpio; } ;
struct ath_hal {TYPE_1__ ah_config; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int ARRAY_LENGTH (int ) ;
 int AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_AR9580 (struct ath_hal*) ;
 int AR_SREV_HONEYBEE (struct ath_hal*) ;
 int AR_SREV_HORNET_11 (struct ath_hal*) ;
 int AR_SREV_HORNET_12 (struct ath_hal*) ;
 int AR_SREV_JUPITER_10 (struct ath_hal*) ;
 int AR_SREV_JUPITER_20 (struct ath_hal*) ;
 int AR_SREV_JUPITER_21 (struct ath_hal*) ;
 scalar_t__ AR_SREV_OSPREY (struct ath_hal*) ;
 int AR_SREV_POSEIDON (struct ath_hal*) ;
 int AR_SREV_POSEIDON_11_OR_LATER (struct ath_hal*) ;
 int AR_SREV_SCORPION (struct ath_hal*) ;
 int AR_SREV_WASP (struct ath_hal*) ;
 int HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED ;
 int INIT_INI_ARRAY (int *,int ,int ,int) ;
 int ar9300Common_mixed_rx_gain_table_jupiter_2p0 ;
 int ar9300Common_rx_gain_table_jupiter_2p0 ;
 int ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0 ;
 int ar9300Common_wo_xlna_rx_gain_table_osprey_2p2 ;
 int ar9300_common_mixed_rx_gain_table_jupiter_1p0 ;
 int ar9300_common_rx_gain_table_ar9580_1p0 ;
 int ar9300_common_rx_gain_table_jupiter_1p0 ;
 int ar9300_common_rx_gain_table_osprey_2p2 ;
 int ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0 ;
 int ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0 ;
 scalar_t__ ar9300_rf_gain_cap_apply (struct ath_hal*,int) ;
 int ar9300_rx_gain_index_get (struct ath_hal*) ;
 int ar9331_common_rx_gain_hornet1_1 ;
 int ar9331_common_rx_gain_hornet1_2 ;
 int ar9331_common_wo_xlna_rx_gain_hornet1_1 ;
 int ar9331_common_wo_xlna_rx_gain_hornet1_2 ;
 int ar9340Common_rx_gain_table_wasp_1p0 ;
 int ar9340Common_wo_xlna_rx_gain_table_wasp_1p0 ;
 int ar9462_2p0_baseband_core_mix_rxgain ;
 int ar9462_2p0_baseband_postamble_5g_xlna ;
 int ar9462_2p0_baseband_postamble_mix_rxgain ;
 int ar9462_2p0_common_5g_xlna_only_rxgain ;
 int ar9462_2p1_baseband_core_mix_rxgain ;
 int ar9462_2p1_baseband_postamble_5g_xlna ;
 int ar9462_2p1_baseband_postamble_mix_rxgain ;
 int ar9462_2p1_common_5g_xlna_only_rxgain ;
 int ar9462_2p1_common_mixed_rx_gain ;
 int ar9462_2p1_common_rx_gain ;
 int ar9462_2p1_common_wo_xlna_rx_gain ;
 int ar9485Common_wo_xlna_rx_gain_poseidon1_0 ;
 int ar9485_common_wo_xlna_rx_gain_poseidon1_1 ;
 int ar955xCommon_rx_gain_bounds_scorpion_1p0 ;
 int ar955xCommon_rx_gain_table_scorpion_1p0 ;
 int ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0 ;
 int ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0 ;
 int ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0 ;
 int ath_hal_gpioCfgOutput (struct ath_hal*,int,int ) ;
 int qca953xCommon_rx_gain_bounds_honeybee_1p0 ;
 int qca953xCommon_rx_gain_table_honeybee_1p0 ;
 int qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0 ;
 int qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0 ;

void ar9300_rx_gain_table_apply(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    u_int32_t xlan_gpio_cfg;
    u_int8_t i;

    if (AR_SREV_OSPREY(ah) || AR_SREV_AR9580(ah))
    {

        if (ar9300_rf_gain_cap_apply(ah, 1))
            return;
 }

    switch (ar9300_rx_gain_index_get(ah))
    {
    case 2:
        if (AR_SREV_JUPITER_10(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_mixed_rx_gain_table_jupiter_1p0,
                ARRAY_LENGTH(ar9300_common_mixed_rx_gain_table_jupiter_1p0), 2);
            break;
        }
        else if (AR_SREV_JUPITER_20(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300Common_mixed_rx_gain_table_jupiter_2p0,
                ARRAY_LENGTH(ar9300Common_mixed_rx_gain_table_jupiter_2p0), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bb_core,
                ar9462_2p0_baseband_core_mix_rxgain,
                ARRAY_LENGTH(ar9462_2p0_baseband_core_mix_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bb_postamble,
                ar9462_2p0_baseband_postamble_mix_rxgain,
                ARRAY_LENGTH(ar9462_2p0_baseband_postamble_mix_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p0_baseband_postamble_5g_xlna,
                ARRAY_LENGTH(ar9462_2p0_baseband_postamble_5g_xlna), 2);
            break;
        }
        else if (AR_SREV_JUPITER_21(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_mixed_rx_gain,
                ARRAY_LENGTH(ar9462_2p1_common_mixed_rx_gain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bb_core,
                ar9462_2p1_baseband_core_mix_rxgain,
                ARRAY_LENGTH(ar9462_2p1_baseband_core_mix_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bb_postamble,
                ar9462_2p1_baseband_postamble_mix_rxgain,
                ARRAY_LENGTH(ar9462_2p1_baseband_postamble_mix_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p1_baseband_postamble_5g_xlna,
                ARRAY_LENGTH(ar9462_2p1_baseband_postamble_5g_xlna), 2);

            break;
        }
    case 3:
        if (AR_SREV_JUPITER_21(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_5g_xlna_only_rxgain,
                ARRAY_LENGTH(ar9462_2p1_common_5g_xlna_only_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p1_baseband_postamble_5g_xlna,
                ARRAY_LENGTH(ar9462_2p1_baseband_postamble_5g_xlna), 2);
        } else if (AR_SREV_JUPITER_20(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9462_2p0_common_5g_xlna_only_rxgain,
                ARRAY_LENGTH(ar9462_2p0_common_5g_xlna_only_rxgain), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_xlna,
                ar9462_2p0_baseband_postamble_5g_xlna,
                ARRAY_LENGTH(ar9462_2p0_baseband_postamble_5g_xlna), 2);
        }
        break;
    case 0:
    default:
        if (AR_SREV_HORNET_12(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9331_common_rx_gain_hornet1_2,
                ARRAY_LENGTH(ar9331_common_rx_gain_hornet1_2), 2);
        } else if (AR_SREV_HORNET_11(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9331_common_rx_gain_hornet1_1,
                ARRAY_LENGTH(ar9331_common_rx_gain_hornet1_1), 2);
        } else if (AR_SREV_POSEIDON_11_OR_LATER(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9485_common_wo_xlna_rx_gain_poseidon1_1,
                ARRAY_LENGTH(ar9485_common_wo_xlna_rx_gain_poseidon1_1), 2);

            xlan_gpio_cfg = ah->ah_config.ath_hal_ext_lna_ctl_gpio;
            if (xlan_gpio_cfg) {
                for (i = 0; i < 32; i++) {
                    if (xlan_gpio_cfg & (1 << i)) {






                        ath_hal_gpioCfgOutput(ah, i,
                            HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED);
                    }
                }
            }

        } else if (AR_SREV_POSEIDON(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9485Common_wo_xlna_rx_gain_poseidon1_0,
                ARRAY_LENGTH(ar9485Common_wo_xlna_rx_gain_poseidon1_0), 2);
        } else if (AR_SREV_JUPITER_10(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_rx_gain_table_jupiter_1p0,
                ARRAY_LENGTH(ar9300_common_rx_gain_table_jupiter_1p0), 2);
        } else if (AR_SREV_JUPITER_20(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300Common_rx_gain_table_jupiter_2p0,
                ARRAY_LENGTH(ar9300Common_rx_gain_table_jupiter_2p0), 2);
        } else if (AR_SREV_JUPITER_21(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_rx_gain,
                ARRAY_LENGTH(ar9462_2p1_common_rx_gain), 2);
        } else if (AR_SREV_AR9580(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_rx_gain_table_ar9580_1p0,
                ARRAY_LENGTH(ar9300_common_rx_gain_table_ar9580_1p0), 2);
        } else if (AR_SREV_WASP(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9340Common_rx_gain_table_wasp_1p0,
                ARRAY_LENGTH(ar9340Common_rx_gain_table_wasp_1p0), 2);
        } else if (AR_SREV_SCORPION(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar955xCommon_rx_gain_table_scorpion_1p0,
                ARRAY_LENGTH(ar955xCommon_rx_gain_table_scorpion_1p0), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bounds,
                ar955xCommon_rx_gain_bounds_scorpion_1p0,
                ARRAY_LENGTH(ar955xCommon_rx_gain_bounds_scorpion_1p0), 5);
        } else if (AR_SREV_HONEYBEE(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                qca953xCommon_rx_gain_table_honeybee_1p0,
                ARRAY_LENGTH(qca953xCommon_rx_gain_table_honeybee_1p0), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bounds,
                qca953xCommon_rx_gain_bounds_honeybee_1p0,
                ARRAY_LENGTH(qca953xCommon_rx_gain_bounds_honeybee_1p0), 5);
        } else {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_rx_gain_table_osprey_2p2,
                ARRAY_LENGTH(ar9300_common_rx_gain_table_osprey_2p2), 2);
        }
        break;
    case 1:
        if (AR_SREV_HORNET_12(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9331_common_wo_xlna_rx_gain_hornet1_2,
                ARRAY_LENGTH(ar9331_common_wo_xlna_rx_gain_hornet1_2), 2);
        } else if (AR_SREV_HORNET_11(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9331_common_wo_xlna_rx_gain_hornet1_1,
                ARRAY_LENGTH(ar9331_common_wo_xlna_rx_gain_hornet1_1), 2);
        } else if (AR_SREV_POSEIDON_11_OR_LATER(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9485_common_wo_xlna_rx_gain_poseidon1_1,
                ARRAY_LENGTH(ar9485_common_wo_xlna_rx_gain_poseidon1_1), 2);
        } else if (AR_SREV_POSEIDON(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9485Common_wo_xlna_rx_gain_poseidon1_0,
                ARRAY_LENGTH(ar9485Common_wo_xlna_rx_gain_poseidon1_0), 2);
        } else if (AR_SREV_JUPITER_10(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0,
                ARRAY_LENGTH(ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0),
                2);
        } else if (AR_SREV_JUPITER_20(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0,
                ARRAY_LENGTH(ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0),
                2);
        } else if (AR_SREV_JUPITER_21(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9462_2p1_common_wo_xlna_rx_gain,
                ARRAY_LENGTH(ar9462_2p1_common_wo_xlna_rx_gain),
                2);
        } else if (AR_SREV_APHRODITE(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0,
                ARRAY_LENGTH(ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0),
                2);
        } else if (AR_SREV_AR9580(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0,
                ARRAY_LENGTH(ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0), 2);
        } else if (AR_SREV_WASP(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9340Common_wo_xlna_rx_gain_table_wasp_1p0,
                ARRAY_LENGTH(ar9340Common_wo_xlna_rx_gain_table_wasp_1p0), 2);
        } else if (AR_SREV_SCORPION(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0,
                ARRAY_LENGTH(ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bounds,
                ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0,
                ARRAY_LENGTH(ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0), 5);
        } else if (AR_SREV_HONEYBEE(ah)) {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0,
                ARRAY_LENGTH(qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0), 2);
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain_bounds,
                qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0,
                ARRAY_LENGTH(qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0), 5);
        } else {
            INIT_INI_ARRAY(&ahp->ah_ini_modes_rxgain,
                ar9300Common_wo_xlna_rx_gain_table_osprey_2p2,
                ARRAY_LENGTH(ar9300Common_wo_xlna_rx_gain_table_osprey_2p2), 2);
        }
        break;
    }
}

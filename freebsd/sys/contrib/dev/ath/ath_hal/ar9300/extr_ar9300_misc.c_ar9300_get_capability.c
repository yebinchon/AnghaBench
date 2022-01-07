
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal_9300 {int ah_sta_id1_defaults; int ah_misc_mode; int ah_enterprise_mode; int ah_proc_phy_err; int ah_rifs_enabled; } ;
struct TYPE_4__ {int ath_hal_crdc_enable; int ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct ar9300_ani_state {int ofdm_noise_immunity_level; int firstep_level; int spur_immunity_level; int ofdm_weak_sig_detect_off; } ;
struct TYPE_5__ {int halNumAntCfg2Ghz; int halNumAntCfg5Ghz; int hal_rx_stbc_support; int hal_tx_stbc_support; int halLDPCSupport; int halTxChainMask; int halRxChainMask; int halApmEnable; int hal_pcie_lcr_offset; int hal_pcie_lcr_extsync_en; int halTsfAddSupport; int halTkipMicTxRxKeySupport; } ;
struct TYPE_6__ {int ah_macRev; int ah_macVersion; TYPE_2__ ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef TYPE_2__ HAL_CAPABILITIES ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_ENT_RTSCTS_DELIM_WAR ;
 struct ar9300_ani_state* AH_NULL ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_ENT_OTP_MIN_PKT_SIZE_DISABLE ;
 int AR_PCU_MIC_NEW_LOC_ENA ;
 int AR_PCU_TXOP_TBTT_LIMIT_ENA ;
 int AR_PCU_TX_ADD_TSF ;
 int AR_PHY_CCK_DETECT ;
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ;
 int AR_SREV_APHRODITE (struct ath_hal*) ;
 int AR_SREV_AR9580_10 (struct ath_hal*) ;
 int AR_SREV_AR9580_10_OR_LATER (struct ath_hal*) ;
 int AR_SREV_HORNET (struct ath_hal*) ;
 int AR_SREV_POSEIDON (struct ath_hal*) ;
 int AR_SREV_REVISION_AR9580_10 ;
 int AR_SREV_SCORPION (struct ath_hal*) ;
 int AR_SREV_VERSION_OSPREY ;
 int AR_SREV_WASP (struct ath_hal*) ;
 int AR_SREV_WASP_10 (struct ath_hal*) ;
 int AR_SREV_WASP_11 (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ADHOC ;
 int AR_STA_ID1_CRPT_MIC_ENABLE ;
 int AR_STA_ID1_MCAST_KSRCH ;
 int EEP_OL_PWRCTRL ;
 int HAL_EINVAL ;
 int HAL_ENOTSUPP ;
 int HAL_ENXIO ;
 int HAL_OK ;
 int HAL_PROCESS_ANI ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 struct ar9300_ani_state* ar9300_ani_get_current_state (struct ath_hal*) ;
 int ar9300_eeprom_get (struct ath_hal_9300*,int ) ;
 int ar9300_read_loc_timer (struct ath_hal*) ;
 int ath_hal_getcapability (struct ath_hal*,int,int,int*) ;

HAL_STATUS
ar9300_get_capability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
    u_int32_t capability, u_int32_t *result)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    const HAL_CAPABILITIES *p_cap = &AH_PRIVATE(ah)->ah_caps;
    struct ar9300_ani_state *ani;

    switch (type) {
    case 173:
        switch (capability) {
        case 133:
        case 132:
        case 129:
        case 128:
        case 130:
        case 131:
            return HAL_OK;
        default:
            return HAL_ENOTSUPP;
        }
    case 142:
        switch (capability) {
        case 0:
            return HAL_OK;
        case 1:
            return (ahp->ah_sta_id1_defaults &
                    AR_STA_ID1_CRPT_MIC_ENABLE) ? HAL_OK : HAL_ENXIO;
        default:
            return HAL_ENOTSUPP;
        }
    case 141:
        switch (capability) {
        case 0:
            return p_cap->halTkipMicTxRxKeySupport ? HAL_ENXIO : HAL_OK;
        case 1:
            return (ahp->ah_misc_mode & AR_PCU_MIC_NEW_LOC_ENA) ?
                HAL_ENXIO : HAL_OK;
        default:
            return HAL_ENOTSUPP;
        }
    case 134:

        return HAL_OK;
    case 149:
        return HAL_OK;
    case 171:
        switch (capability) {
        case 0:
            return HAL_OK;
        case 1:
            return (OS_REG_READ(ah, AR_PHY_CCK_DETECT) &
                            AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV) ?
                            HAL_OK : HAL_ENXIO;
        }
        return HAL_EINVAL;
    case 139:
        switch (capability) {
        case 0:
            return HAL_OK;
        case 1:
            return ah->ah_config.ath_hal_desc_tpc ?
                               HAL_OK : HAL_ENXIO;
        }
        return HAL_OK;
    case 148:
        return HAL_OK;
    case 153:
        switch (capability) {
        case 0:
            return HAL_OK;
        case 1:
            if (OS_REG_READ(ah, AR_STA_ID1) & AR_STA_ID1_ADHOC) {





                return HAL_ENXIO;
            } else {
                return (ahp->ah_sta_id1_defaults &
                        AR_STA_ID1_MCAST_KSRCH) ? HAL_OK : HAL_ENXIO;
            }
        }
        return HAL_EINVAL;
    case 136:
        switch (capability) {
        case 0:
            return p_cap->halTsfAddSupport ? HAL_OK : HAL_ENOTSUPP;
        case 1:
            return (ahp->ah_misc_mode & AR_PCU_TX_ADD_TSF) ?
                HAL_OK : HAL_ENXIO;
        }
        return HAL_EINVAL;
    case 146:
        if (capability == 3) {





            return (HAL_ENOTSUPP);
        }
        return ath_hal_getcapability(ah, type, capability, result);
    case 180:
        return HAL_OK;
    case 175:
        return HAL_ENOTSUPP;
    case 177:
        return HAL_ENOTSUPP;
    case 174:



        return HAL_ENOTSUPP;
    case 156:


        return HAL_OK;
    case 145:

        return (ahp->ah_rifs_enabled == AH_TRUE) ? HAL_OK : HAL_ENOTSUPP;
    case 158:
        *result = p_cap->halLDPCSupport;
        return HAL_OK;
    case 169:
        return HAL_OK;
    case 170:
        return (AR_SREV_HORNET(ah) || AR_SREV_POSEIDON(ah) || AR_SREV_APHRODITE(ah) ||
                (p_cap->halTxChainMask & 0x3) != 0x3 ||
                (p_cap->halRxChainMask & 0x3) != 0x3) ?
            HAL_ENOTSUPP : HAL_OK;
    case 137:
        return (AR_SREV_HORNET(ah) || AR_SREV_POSEIDON(ah) || AR_SREV_APHRODITE(ah) ||
                (p_cap->halTxChainMask & 0x7) != 0x7 ||
                (p_cap->halRxChainMask & 0x7) != 0x7) ?
            HAL_ENOTSUPP : HAL_OK;
    case 152:
        return (ar9300_eeprom_get(ahp, EEP_OL_PWRCTRL)) ?
            HAL_OK : HAL_ENOTSUPP;
    case 172:





        return HAL_ENOTSUPP;
    case 176:
        return HAL_OK;
    case 147:
        if ((AH_PRIVATE((ah))->ah_macVersion == AR_SREV_VERSION_OSPREY) &&
            (AH_PRIVATE((ah))->ah_macRev < AR_SREV_REVISION_AR9580_10))
        {
            return HAL_OK;
        }
        else
        {
            return HAL_ENOTSUPP;
        }
    case 166:
        *result = ahp->ah_enterprise_mode >> 16;






        if ((ahp->ah_enterprise_mode & AR_ENT_OTP_MIN_PKT_SIZE_DISABLE) &&
                !AR_SREV_AR9580_10_OR_LATER(ah) && (!AR_SREV_WASP(ah) ||
                AR_SREV_WASP_10(ah))) {
            *result |= AH_ENT_RTSCTS_DELIM_WAR;
        }
        return HAL_OK;
    case 157:



        return HAL_OK;
    case 168:
        *result = p_cap->halApmEnable;
        return HAL_OK;
    case 151:
        return (p_cap->hal_pcie_lcr_extsync_en == AH_TRUE) ? HAL_OK : HAL_ENOTSUPP;
    case 150:
        *result = p_cap->hal_pcie_lcr_offset;
        return HAL_OK;
    case 143:
        return HAL_ENOTSUPP;
    case 165:
            switch (capability) {
            case 160:
                    return HAL_OK;
            case 164:
                    return (ahp->ah_proc_phy_err & HAL_PROCESS_ANI) ?
                            HAL_OK : HAL_ENXIO;
            case 162:
            case 161:

            case 163:
            case 159:
                    ani = ar9300_ani_get_current_state(ah);
                    if (ani == AH_NULL)
                            return HAL_ENXIO;
                    switch (capability) {

                    case 2: *result = ani->ofdm_noise_immunity_level; break;
                    case 3: *result = !ani->ofdm_weak_sig_detect_off; break;

                    case 5: *result = ani->firstep_level; break;
                    case 6: *result = ani->spur_immunity_level; break;
                    }
                    return HAL_OK;
            }
            return HAL_EINVAL;
    case 167:
        if (capability == 0)
            return (HAL_OK);
        if (capability != 1)
            return (HAL_ENOTSUPP);
        (*result) = !! (ahp->ah_misc_mode & AR_PCU_TXOP_TBTT_LIMIT_ENA);
        return (HAL_OK);
    case 140:
        if (capability == 0)
            return HAL_OK;
        if (capability == 2) {
            *result = ar9300_read_loc_timer(ah);
            return (HAL_OK);
        }
        return HAL_ENOTSUPP;
    default:
        return ath_hal_getcapability(ah, type, capability, result);
    }
}

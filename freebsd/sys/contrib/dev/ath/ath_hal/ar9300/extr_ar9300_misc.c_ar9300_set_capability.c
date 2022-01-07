
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal_9300 {int ah_misc_mode; int rx_buf_size; int ah_sta_id1_defaults; } ;
struct TYPE_4__ {int ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_5__ {int halTsfAddSupport; int halTkipMicTxRxKeySupport; } ;
struct TYPE_6__ {int ah_diagreg; TYPE_2__ ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef TYPE_2__ HAL_CAPABILITIES ;
typedef int HAL_BOOL ;
typedef int HAL_ANI_CMD ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_DATABUF ;
 int AR_DATABUF_MASK ;
 int AR_DIAG_SW ;
 int AR_PCU_MIC_NEW_LOC_ENA ;
 int AR_PCU_MISC ;
 int AR_PCU_TXOP_TBTT_LIMIT_ENA ;
 int AR_PCU_TX_ADD_TSF ;
 int AR_PHY_CCK_DETECT ;
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ;
 int AR_STA_ID1_CRPT_MIC_ENABLE ;
 int AR_STA_ID1_MCAST_KSRCH ;
 int N (int const*) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar9300_ani_control (struct ath_hal*,int const,int) ;
 int ar9300_update_loc_ctl_reg (struct ath_hal*,int) ;
 int ath_hal_setcapability (struct ath_hal*,int,int,int,int *) ;

HAL_BOOL
ar9300_set_capability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
        u_int32_t capability, u_int32_t setting, HAL_STATUS *status)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    const HAL_CAPABILITIES *p_cap = &AH_PRIVATE(ah)->ah_caps;
    u_int32_t v;

    switch (type) {
    case 131:
        if (! p_cap->halTkipMicTxRxKeySupport)
            return AH_FALSE;

        if (setting)
            ahp->ah_misc_mode &= ~AR_PCU_MIC_NEW_LOC_ENA;
        else
            ahp->ah_misc_mode |= AR_PCU_MIC_NEW_LOC_ENA;

        OS_REG_WRITE(ah, AR_PCU_MISC, ahp->ah_misc_mode);
        return AH_TRUE;

    case 132:
        if (setting) {
            ahp->ah_sta_id1_defaults |= AR_STA_ID1_CRPT_MIC_ENABLE;
        } else {
            ahp->ah_sta_id1_defaults &= ~AR_STA_ID1_CRPT_MIC_ENABLE;
        }
        return AH_TRUE;
    case 137:
        v = OS_REG_READ(ah, AR_PHY_CCK_DETECT);
        if (setting) {
            v |= AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV;
        } else {
            v &= ~AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV;
        }
        OS_REG_WRITE(ah, AR_PHY_CCK_DETECT, v);
        return AH_TRUE;
    case 138:
        AH_PRIVATE(ah)->ah_diagreg = setting & 0x6;

        OS_REG_WRITE(ah, AR_DIAG_SW, AH_PRIVATE(ah)->ah_diagreg);
        return AH_TRUE;
    case 129:
        ah->ah_config.ath_hal_desc_tpc = (setting != 0);
        return AH_TRUE;
    case 134:
        if (setting) {
            ahp->ah_sta_id1_defaults |= AR_STA_ID1_MCAST_KSRCH;
        } else {
            ahp->ah_sta_id1_defaults &= ~AR_STA_ID1_MCAST_KSRCH;
        }
        return AH_TRUE;
    case 128:
        if (p_cap->halTsfAddSupport) {
            if (setting) {
                ahp->ah_misc_mode |= AR_PCU_TX_ADD_TSF;
            } else {
                ahp->ah_misc_mode &= ~AR_PCU_TX_ADD_TSF;
            }
            return AH_TRUE;
        }
        return AH_FALSE;


    case 135: {


            static const HAL_ANI_CMD cmds[] = {
                    140,
                    143,
                    142,
                    141,
                    145,
                    144,
                    139,
            };

            return capability < (sizeof(cmds) / sizeof(cmds[0])) ?
                    ar9300_ani_control(ah, cmds[capability], setting) :
                    AH_FALSE;

    }

    case 133:
        ahp->rx_buf_size = setting & AR_DATABUF_MASK;
        OS_REG_WRITE(ah, AR_DATABUF, ahp->rx_buf_size);
        return AH_TRUE;

    case 136:
        if (capability != 1)
            return AH_FALSE;
        if (setting) {
            ahp->ah_misc_mode |= AR_PCU_TXOP_TBTT_LIMIT_ENA;
            OS_REG_SET_BIT(ah, AR_PCU_MISC, AR_PCU_TXOP_TBTT_LIMIT_ENA);
        } else {
            ahp->ah_misc_mode &= ~AR_PCU_TXOP_TBTT_LIMIT_ENA;
            OS_REG_CLR_BIT(ah, AR_PCU_MISC, AR_PCU_TXOP_TBTT_LIMIT_ENA);
        }
        return AH_TRUE;

    case 130:
        if (capability == 0)
            return AH_TRUE;
        if (capability == 1) {
            ar9300_update_loc_ctl_reg(ah, setting);
            return AH_TRUE;
        }
        return AH_FALSE;

    default:
        return ath_hal_setcapability(ah, type, capability, setting, status);
    }
}

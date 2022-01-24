#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ath_hal_9300 {int /*<<< orphan*/  ah_proc_phy_err; int /*<<< orphan*/  ah_ani_period; TYPE_4__* ah_ani; } ;
struct TYPE_6__ {scalar_t__ ath_hal_enable_ani; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_9__ {size_t ofdm_noise_immunity_level; size_t cck_noise_immunity_level; int ofdm_weak_sig_detect_off; size_t spur_immunity_level; size_t firstep_level; int mrc_cck_off; int /*<<< orphan*/  must_restore; int /*<<< orphan*/  ofdms_turn; int /*<<< orphan*/  rssi_thr_low; int /*<<< orphan*/  rssi_thr_high; int /*<<< orphan*/  cck_trig_low; int /*<<< orphan*/  cck_trig_high; int /*<<< orphan*/  ofdm_trig_low; int /*<<< orphan*/  ofdm_trig_high; } ;
struct TYPE_8__ {size_t fir_step_level; } ;
struct TYPE_7__ {size_t fir_step_level; size_t spur_immunity_level; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  AR_PHY_ERR_1 ; 
 int /*<<< orphan*/  AR_PHY_ERR_2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t HAL_ANI_CCK_DEF_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_CCK_TRIG_HIGH ; 
 int /*<<< orphan*/  HAL_ANI_CCK_TRIG_LOW ; 
 size_t HAL_ANI_DEF_FIRSTEP_LVL ; 
 size_t HAL_ANI_DEF_SPUR_IMMUNE_LVL ; 
 int /*<<< orphan*/  HAL_ANI_ENABLE_MRC_CCK ; 
 size_t HAL_ANI_OFDM_DEF_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_OFDM_TRIG_HIGH ; 
 int /*<<< orphan*/  HAL_ANI_OFDM_TRIG_LOW ; 
 int /*<<< orphan*/  HAL_ANI_PERIOD ; 
 int /*<<< orphan*/  HAL_ANI_RSSI_THR_HIGH ; 
 int /*<<< orphan*/  HAL_ANI_RSSI_THR_LOW ; 
 int /*<<< orphan*/  HAL_ANI_USE_OFDM_WEAK_SIG ; 
 int /*<<< orphan*/  HAL_PROCESS_ANI ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 TYPE_3__* cck_level_table ; 
 scalar_t__* cycpwr_thr1_table ; 
 scalar_t__* firstep_table ; 
 TYPE_2__* ofdm_level_table ; 

void
FUNC6(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    int i;

    FUNC3(ahp->ah_ani, sizeof(ahp->ah_ani));
    for (i = 0; i < FUNC1(ahp->ah_ani); i++) {
        ahp->ah_ani[i].ofdm_trig_high = HAL_ANI_OFDM_TRIG_HIGH;
        ahp->ah_ani[i].ofdm_trig_low = HAL_ANI_OFDM_TRIG_LOW;
        ahp->ah_ani[i].cck_trig_high = HAL_ANI_CCK_TRIG_HIGH;
        ahp->ah_ani[i].cck_trig_low = HAL_ANI_CCK_TRIG_LOW;
        ahp->ah_ani[i].rssi_thr_high = HAL_ANI_RSSI_THR_HIGH;
        ahp->ah_ani[i].rssi_thr_low = HAL_ANI_RSSI_THR_LOW;
        ahp->ah_ani[i].ofdm_noise_immunity_level = HAL_ANI_OFDM_DEF_LEVEL;
        ahp->ah_ani[i].cck_noise_immunity_level = HAL_ANI_CCK_DEF_LEVEL;
        ahp->ah_ani[i].ofdm_weak_sig_detect_off = !HAL_ANI_USE_OFDM_WEAK_SIG;
        ahp->ah_ani[i].spur_immunity_level = HAL_ANI_DEF_SPUR_IMMUNE_LVL;
        ahp->ah_ani[i].firstep_level = HAL_ANI_DEF_FIRSTEP_LVL;
        ahp->ah_ani[i].mrc_cck_off = !HAL_ANI_ENABLE_MRC_CCK;
        ahp->ah_ani[i].ofdms_turn = AH_TRUE;
        ahp->ah_ani[i].must_restore = AH_FALSE;
    }

    /*
     * Since we expect some ongoing maintenance on the tables,
     * let's sanity check here.
     * The default level should not modify INI setting.
     */
    FUNC2(firstep_table[HAL_ANI_DEF_FIRSTEP_LVL] == 0);
    FUNC2(cycpwr_thr1_table[HAL_ANI_DEF_SPUR_IMMUNE_LVL] == 0);
    FUNC2(
        ofdm_level_table[HAL_ANI_OFDM_DEF_LEVEL].fir_step_level ==
        HAL_ANI_DEF_FIRSTEP_LVL);
    FUNC2(
        ofdm_level_table[HAL_ANI_OFDM_DEF_LEVEL].spur_immunity_level ==
        HAL_ANI_DEF_SPUR_IMMUNE_LVL);
    FUNC2(
        cck_level_table[HAL_ANI_CCK_DEF_LEVEL].fir_step_level ==
        HAL_ANI_DEF_FIRSTEP_LVL);

    /* Initialize and enable MIB Counters */
    FUNC4(ah, AR_PHY_ERR_1, 0);
    FUNC4(ah, AR_PHY_ERR_2, 0);
    FUNC5(ah);

    ahp->ah_ani_period = HAL_ANI_PERIOD;
    if (ah->ah_config.ath_hal_enable_ani) {
        ahp->ah_proc_phy_err |= HAL_PROCESS_ANI;
    }
}
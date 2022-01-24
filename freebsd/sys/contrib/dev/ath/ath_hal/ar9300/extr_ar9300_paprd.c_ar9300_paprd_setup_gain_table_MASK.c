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
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int paprd_training_power; int ah_tx_chainmask; unsigned int* paprd_gain_table_index; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HAL_DEBUG_CALIBRATE ; 
 int /*<<< orphan*/  HAL_OK ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct ath_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,unsigned int) ; 

HAL_STATUS FUNC6(struct ath_hal *ah, int chain_num)
{
    unsigned int i, desired_gain, gain_index;
    FUNC2(ah, HAL_DEBUG_CALIBRATE,
        "Run papredistortion single table algorithm:: Training power = %d\n",
        FUNC0(ah)->paprd_training_power / 2);

    if (FUNC0(ah)->ah_tx_chainmask & (1 << chain_num)) {
        /* this is an active chain */
        desired_gain = FUNC4(
            ah, chain_num, FUNC0(ah)->paprd_training_power);
        /* find out gain index */
        gain_index = 0;

        for (i = 0; i < 32; i++) {
            if (FUNC0(ah)->paprd_gain_table_index[i] < desired_gain) {
                gain_index = gain_index + 1;
            } else {
                break;
            }
        }

        /*printf("gain_index = %d\n", gain_index);*/
        /*ath_hal_printf(ah, "++++ gain_index = %d\n", gain_index);*/
        FUNC5(ah, gain_index);
        if (FUNC1(ah)) {
            FUNC3(ah, AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON,
                AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, 0);
        } else {
            FUNC3(ah, AR_PHY_PAPRD_TRAINER_STAT1,
                AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, 0);
        }
    }

    return HAL_OK;
}
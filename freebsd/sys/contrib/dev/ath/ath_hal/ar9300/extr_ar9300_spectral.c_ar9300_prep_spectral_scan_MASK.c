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
struct TYPE_2__ {scalar_t__ ah_curchan; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int /*<<< orphan*/  HAL_PHYERR_SPECTRAL ; 
 scalar_t__ FUNC1 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  MAX_CCA_THRESH ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*) ; 

void FUNC11(struct ath_hal *ah)
{
    FUNC5(ah);
    FUNC3(ah);
    FUNC4(ah);
    if (FUNC0(ah)->ah_curchan &&
        FUNC1(ah, FUNC0(ah)->ah_curchan))
    { /* fast clock */
        FUNC8(ah);
    }
#ifdef DEMO_MODE
    ar9300_disable_strong_signal(ah);
    ar9300_disable_weak_signal(ah);
    ar9300_set_radar_dc_thresh(ah);
    ar9300_set_cca_threshold(ah, MAX_CCA_THRESH);
    /*ar9300_disable_restart(ah);*/
#endif
    FUNC2(ah, AR_PHY_ERR, HAL_PHYERR_SPECTRAL);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hal_9300 {struct ar9300_ani_state* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar9300_ani_state {scalar_t__ cck_noise_immunity_level; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 scalar_t__ HAL_ANI_CCK_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    struct ar9300_ani_state *ani_state;

    if (!FUNC1(ah)) {
        return;
    }

    ani_state = ahp->ah_curani;

    if (ani_state->cck_noise_immunity_level < HAL_ANI_CCK_MAX_LEVEL) {
        FUNC2(
            ah, ani_state->cck_noise_immunity_level + 1);
    }
}
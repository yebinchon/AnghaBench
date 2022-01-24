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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HAL_BOOL FUNC5(struct ath_hal *ah, u_int16_t channel)
{
    u_int32_t value;

    value = FUNC4(ah, channel);
    /* Apply to both xpaa and xpab */
    if (FUNC1(ah) || FUNC0(ah) || FUNC2(ah)) 
    {
        FUNC3(ah, AR_PHY_XPA_TIMING_CTL, 
            AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF, value);
        FUNC3(ah, AR_PHY_XPA_TIMING_CTL, 
            AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF, value);
    }
    return 0;
}
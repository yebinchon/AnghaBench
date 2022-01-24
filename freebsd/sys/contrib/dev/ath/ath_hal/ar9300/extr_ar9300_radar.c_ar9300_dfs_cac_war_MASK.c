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
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9300_DFS_PRSSI ; 
 int /*<<< orphan*/  AR9300_DFS_PRSSI_CAC ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int AR_PHY_RADAR_0_ENA ; 
 int AR_PHY_RADAR_0_PRSSI ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct ath_hal *ah, u_int32_t start)
{
    u_int32_t val;

    if (FUNC0(ah) || FUNC2(ah) || FUNC1(ah)) {
        val = FUNC3(ah, AR_PHY_RADAR_0);
        if (start) {
            val &= ~AR_PHY_RADAR_0_PRSSI;
            val |= FUNC5(AR9300_DFS_PRSSI_CAC, AR_PHY_RADAR_0_PRSSI); 
        } else {
            val &= ~AR_PHY_RADAR_0_PRSSI;
            val |= FUNC5(AR9300_DFS_PRSSI, AR_PHY_RADAR_0_PRSSI);
        }
        FUNC4(ah, AR_PHY_RADAR_0, val | AR_PHY_RADAR_0_ENA);
//        ah->ah_use_cac_prssi = start;
    }
}
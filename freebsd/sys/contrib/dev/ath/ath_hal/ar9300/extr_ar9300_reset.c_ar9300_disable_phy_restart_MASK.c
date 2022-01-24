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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_phyrestart_disabled; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_RESTART ; 
 int /*<<< orphan*/  AR_PHY_RESTART_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath_hal *ah, int disable_phy_restart)
{
    u_int32_t val;

    val = FUNC1(ah, AR_PHY_RESTART);
    if (disable_phy_restart) {
        val &= ~AR_PHY_RESTART_ENA;
        FUNC0(ah)->ah_phyrestart_disabled = 1;
    } else {
        val |= AR_PHY_RESTART_ENA;
        FUNC0(ah)->ah_phyrestart_disabled = 0;
    }
    FUNC2(ah, AR_PHY_RESTART, val);

    val = FUNC1(ah, AR_PHY_RESTART);
}
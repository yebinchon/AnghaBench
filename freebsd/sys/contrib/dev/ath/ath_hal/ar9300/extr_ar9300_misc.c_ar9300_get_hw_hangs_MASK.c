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
struct ath_hal_9300 {int /*<<< orphan*/  ah_hang_wars; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  hal_hw_hangs_t ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_NULL ; 
 int /*<<< orphan*/  HAL_CAP_BB_DFS_HANG ; 
 int /*<<< orphan*/  HAL_CAP_BB_RIFS_HANG ; 
 int /*<<< orphan*/  HAL_CAP_BB_RX_CLEAR_STUCK_HANG ; 
 int /*<<< orphan*/  HAL_CAP_MAC_HANG ; 
 int /*<<< orphan*/  HAL_CAP_PHYRESTART_CLR_WAR ; 
 int /*<<< orphan*/  HAL_DFS_BB_HANG_WAR ; 
 int /*<<< orphan*/  HAL_MAC_HANG_WAR ; 
 scalar_t__ HAL_OK ; 
 int /*<<< orphan*/  HAL_PHYRESTART_CLR_WAR ; 
 int /*<<< orphan*/  HAL_RIFS_BB_HANG_WAR ; 
 int /*<<< orphan*/  HAL_RX_STUCK_LOW_BB_HANG_WAR ; 
 scalar_t__ FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, hal_hw_hangs_t *hangs)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    *hangs = 0;

    if (FUNC1(ah, HAL_CAP_BB_RIFS_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_RIFS_BB_HANG_WAR;
    }
    if (FUNC1(ah, HAL_CAP_BB_DFS_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_DFS_BB_HANG_WAR;
    }
    if (FUNC1(ah, HAL_CAP_BB_RX_CLEAR_STUCK_HANG, 0, AH_NULL)
        == HAL_OK)
    {
        *hangs |= HAL_RX_STUCK_LOW_BB_HANG_WAR;
    }
    if (FUNC1(ah, HAL_CAP_MAC_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_MAC_HANG_WAR;
    }
    if (FUNC1(ah, HAL_CAP_PHYRESTART_CLR_WAR, 0, AH_NULL)
        == HAL_OK)
    {
        *hangs |= HAL_PHYRESTART_CLR_WAR;
    }

    ahp->ah_hang_wars = *hangs;
}
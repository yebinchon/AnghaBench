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
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_NULL ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  HAL_RESET_COLD ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah)
{
    if (!FUNC1(ah, HAL_PM_AWAKE, AH_TRUE)) {
        return AH_FALSE;
    }
    if (!FUNC2(ah, HAL_RESET_COLD)) {
        return AH_FALSE;
    }

    FUNC0(ah, AH_NULL);

    return AH_TRUE;
}
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
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_MCAST_FIL0 ; 
 int /*<<< orphan*/  AR_MCAST_FIL1 ; 
 int FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HAL_BOOL
FUNC2(struct ath_hal *ah, uint32_t ix)
{
	uint32_t val;

	if (ix >= 64)
		return (AH_FALSE);
	if (ix >= 32) {
		val = FUNC0(ah, AR_MCAST_FIL1);
		FUNC1(ah, AR_MCAST_FIL1, (val &~ (1<<(ix-32))));
	} else {
		val = FUNC0(ah, AR_MCAST_FIL0);
		FUNC1(ah, AR_MCAST_FIL0, (val &~ (1<<ix)));
	}
	return AH_TRUE;
}
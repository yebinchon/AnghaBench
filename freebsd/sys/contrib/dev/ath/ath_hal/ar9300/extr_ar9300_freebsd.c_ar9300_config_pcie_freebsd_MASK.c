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
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int,int) ; 

void
FUNC1(struct ath_hal *ah, HAL_BOOL restore,
    HAL_BOOL powerOff)
{

	FUNC0(ah, restore ? 1 : 0, powerOff ? 1 : 0);
}
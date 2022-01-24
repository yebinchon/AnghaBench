#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rxstatus_offset; int /*<<< orphan*/  rxstatus_numwords; int /*<<< orphan*/  rxctl_offset; int /*<<< orphan*/  rxctl_numwords; int /*<<< orphan*/  txstatus_offset; int /*<<< orphan*/  txstatus_numwords; int /*<<< orphan*/  txctl_offset; int /*<<< orphan*/  txctl_numwords; } ;
typedef  TYPE_1__ HAL_DESC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*) ; 

void
FUNC8(struct ath_hal *ah, HAL_DESC_INFO *desc_info)
{
    desc_info->txctl_numwords = FUNC4(ah);
    desc_info->txctl_offset = FUNC5(ah);
    desc_info->txstatus_numwords = FUNC6(ah);
    desc_info->txstatus_offset = FUNC7(ah);

    desc_info->rxctl_numwords = FUNC0(ah);
    desc_info->rxctl_offset = FUNC1(ah);
    desc_info->rxstatus_numwords = FUNC2(ah);
    desc_info->rxstatus_offset = FUNC3(ah);
}
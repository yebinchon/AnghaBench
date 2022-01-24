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
typedef  int HAL_HT_RXCLEAR ;

/* Variables and functions */
 int /*<<< orphan*/  AR_DIAG_RX_CLEAR_CTL_LOW ; 
 int /*<<< orphan*/  AR_DIAG_RX_CLEAR_EXT_LOW ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int HAL_RX_CLEAR_CTL_LOW ; 
 int HAL_RX_CLEAR_EXT_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, HAL_HT_RXCLEAR rxclear)
{
    /* control channel */
    if (rxclear & HAL_RX_CLEAR_CTL_LOW) {
        FUNC1(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_CTL_LOW);
    } else {
        FUNC0(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_CTL_LOW);
    }
    /* extension channel */
    if (rxclear & HAL_RX_CLEAR_EXT_LOW) {
        FUNC1(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_EXT_LOW);
    } else {
        FUNC0(ah, AR_DIAG_SW, AR_DIAG_RX_CLEAR_EXT_LOW);
    }
}
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
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_TIMING5 ; 
 int /*<<< orphan*/  AR_PHY_TIMING5_RSSI_THR1A ; 
 int /*<<< orphan*/  AR_PHY_TIMING5_RSSI_THR1A_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ath_hal *ah)
{
    u_int32_t val;

    val = FUNC0(ah, AR_PHY_TIMING5);
    val |= AR_PHY_TIMING5_RSSI_THR1A_ENA;
    FUNC2(ah, AR_PHY_TIMING5, val);

    FUNC1(ah, AR_PHY_TIMING5, AR_PHY_TIMING5_RSSI_THR1A, 0x7f);

}
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
 int /*<<< orphan*/  AR_PHY_RADAR_DC_PWR_THRESH ; 
 int /*<<< orphan*/  AR_PHY_RADAR_EXT ; 
 int /*<<< orphan*/  MAX_RADAR_DC_PWR_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath_hal *ah)
{
    u_int32_t val;
    val = FUNC0(ah, AR_PHY_RADAR_EXT);
    val &= ~AR_PHY_RADAR_DC_PWR_THRESH;
    val |= FUNC2(MAX_RADAR_DC_PWR_THRESH, AR_PHY_RADAR_DC_PWR_THRESH);
    FUNC1(ah, AR_PHY_RADAR_EXT, val);

    val = FUNC0(ah, AR_PHY_RADAR_EXT);
}
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
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CFG_LED ; 
 int /*<<< orphan*/  AR_CFG_LED_MODE_NETWORK_OFF ; 
 int /*<<< orphan*/  AR_CFG_LED_MODE_NETWORK_ON ; 
 int /*<<< orphan*/  AR_CFG_LED_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ath_hal *ah, u_int8_t enabled)
{
    u_int32_t    val;

    val = enabled ? AR_CFG_LED_MODE_NETWORK_ON : AR_CFG_LED_MODE_NETWORK_OFF;
    FUNC0(ah, AR_CFG_LED, AR_CFG_LED_NETWORK, val);
}
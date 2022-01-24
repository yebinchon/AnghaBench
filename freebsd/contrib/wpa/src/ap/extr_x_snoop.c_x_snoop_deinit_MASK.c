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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_BR_NET_PARAM_GARP_ACCEPT ; 
 int /*<<< orphan*/  DRV_BR_PORT_ATTR_HAIRPIN_MODE ; 
 int /*<<< orphan*/  DRV_BR_PORT_ATTR_PROXYARP ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hostapd_data *hapd)
{
	FUNC1(hapd, DRV_BR_NET_PARAM_GARP_ACCEPT, 0);
	FUNC0(hapd, DRV_BR_PORT_ATTR_PROXYARP, 0);
	FUNC0(hapd, DRV_BR_PORT_ATTR_HAIRPIN_MODE, 0);
}
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
struct hostapd_data {int /*<<< orphan*/  radius; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_AUTH ; 
 int /*<<< orphan*/  hostapd_acl_recv_radius ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*) ; 

int FUNC1(struct hostapd_data *hapd)
{
#ifndef CONFIG_NO_RADIUS
	if (FUNC0(hapd->radius, RADIUS_AUTH,
				   hostapd_acl_recv_radius, hapd))
		return -1;
#endif /* CONFIG_NO_RADIUS */

	return 0;
}
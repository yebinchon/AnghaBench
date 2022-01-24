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
struct wpa_driver_ndis_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OID_802_3_MULTICAST_LIST ; 
 scalar_t__ FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ pae_group_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct wpa_driver_ndis_data *drv)
{
	if (FUNC0(drv, OID_802_3_MULTICAST_LIST,
			 (const char *) pae_group_addr, ETH_ALEN) < 0) {
		FUNC1(MSG_DEBUG, "NDIS: Failed to add PAE group address "
			   "to the multicast list");
		return -1;
	}

	return 0;
}
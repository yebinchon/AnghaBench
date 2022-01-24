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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {scalar_t__ wired; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  OID_802_11_BSSID ; 
 scalar_t__ FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pae_group_addr ; 

__attribute__((used)) static int FUNC2(void *priv, u8 *bssid)
{
	struct wpa_driver_ndis_data *drv = priv;

	if (drv->wired) {
		/*
		 * Report PAE group address as the "BSSID" for wired
		 * connection.
		 */
		FUNC1(bssid, pae_group_addr, ETH_ALEN);
		return 0;
	}

	return FUNC0(drv, OID_802_11_BSSID, (char *) bssid, ETH_ALEN) <
		0 ? -1 : 0;
}
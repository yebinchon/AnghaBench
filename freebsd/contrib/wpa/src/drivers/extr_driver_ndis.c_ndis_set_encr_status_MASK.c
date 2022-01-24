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
typedef  int u32 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef  int /*<<< orphan*/  encr_status ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OID_802_11_ENCRYPTION_STATUS ; 
 scalar_t__ FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct wpa_driver_ndis_data *drv, int encr)
{
	u32 encr_status = encr;
	if (FUNC0(drv, OID_802_11_ENCRYPTION_STATUS,
			 (char *) &encr_status, sizeof(encr_status)) < 0) {
		FUNC1(MSG_DEBUG, "NDIS: Failed to set "
			   "OID_802_11_ENCRYPTION_STATUS (%d)", encr);
		return -1;
	}
	return 0;
}
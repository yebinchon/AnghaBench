#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {scalar_t__ wired; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int SsidLength; int /*<<< orphan*/  Ssid; } ;
typedef  TYPE_1__ NDIS_802_11_SSID ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OID_802_11_SSID ; 
 int FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void *priv, u8 *ssid)
{
	struct wpa_driver_ndis_data *drv = priv;
	NDIS_802_11_SSID buf;
	int res;

	res = FUNC0(drv, OID_802_11_SSID, (char *) &buf, sizeof(buf));
	if (res < 4) {
		FUNC2(MSG_DEBUG, "NDIS: Failed to get SSID");
		if (drv->wired) {
			FUNC2(MSG_DEBUG, "NDIS: Allow get_ssid failure "
				   "with a wired interface");
			return 0;
		}
		return -1;
	}
	FUNC1(ssid, buf.Ssid, buf.SsidLength);
	return buf.SsidLength;
}
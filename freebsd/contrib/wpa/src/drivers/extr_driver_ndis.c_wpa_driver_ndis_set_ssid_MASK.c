#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {int radio_enabled; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {size_t SsidLength; int /*<<< orphan*/  Ssid; } ;
typedef  TYPE_1__ NDIS_802_11_SSID ;

/* Variables and functions */
 int /*<<< orphan*/  OID_802_11_SSID ; 
 int FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct wpa_driver_ndis_data *drv,
				    const u8 *ssid, size_t ssid_len)
{
	NDIS_802_11_SSID buf;

	FUNC2(&buf, 0, sizeof(buf));
	buf.SsidLength = ssid_len;
	FUNC1(buf.Ssid, ssid, ssid_len);
	/*
	 * Make sure radio is marked enabled here so that scan request will not
	 * force SSID to be changed to a random one in order to enable radio at
	 * that point.
	 */
	drv->radio_enabled = 1;
	return FUNC0(drv, OID_802_11_SSID, (char *) &buf, sizeof(buf));
}
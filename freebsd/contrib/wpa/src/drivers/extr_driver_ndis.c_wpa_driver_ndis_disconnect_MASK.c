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
struct wpa_driver_ndis_data {int dummy; } ;

/* Variables and functions */
 int SSID_MAX_LEN ; 
 int FUNC0 () ; 
 int FUNC1 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct wpa_driver_ndis_data *drv)
{
	char ssid[SSID_MAX_LEN];
	int i;
	for (i = 0; i < SSID_MAX_LEN; i++)
		ssid[i] = FUNC0() & 0xff;
	return FUNC1(drv, (u8 *) ssid, SSID_MAX_LEN);
}
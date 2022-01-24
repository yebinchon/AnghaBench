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
struct wps_device_data {int /*<<< orphan*/  multi_ap_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC1(struct wps_device_data *dev, const u8 ext)
{
	dev->multi_ap_ext = ext;
	FUNC0(MSG_DEBUG, "WPS: Multi-AP extension value %02x",
		   dev->multi_ap_ext);
}
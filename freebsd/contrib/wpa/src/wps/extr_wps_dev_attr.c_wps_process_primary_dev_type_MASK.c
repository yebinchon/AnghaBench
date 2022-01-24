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
struct wps_device_data {int /*<<< orphan*/  pri_dev_type; } ;
typedef  int /*<<< orphan*/  devtype ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_DEV_TYPE_BUFSIZE ; 
 int /*<<< orphan*/  WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct wps_device_data *dev,
					const u8 *dev_type)
{
#ifndef CONFIG_NO_STDOUT_DEBUG
	char devtype[WPS_DEV_TYPE_BUFSIZE];
#endif /* CONFIG_NO_STDOUT_DEBUG */

	if (dev_type == NULL) {
		FUNC1(MSG_DEBUG, "WPS: No Primary Device Type received");
		return -1;
	}

	FUNC0(dev->pri_dev_type, dev_type, WPS_DEV_TYPE_LEN);
	FUNC1(MSG_DEBUG, "WPS: Primary Device Type: %s",
		   FUNC2(dev->pri_dev_type, devtype,
					sizeof(devtype)));

	return 0;
}
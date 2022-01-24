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
struct wps_device_data {scalar_t__ device_name; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 size_t ATTR_DEV_NAME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char) ; 

int FUNC5(struct wps_device_data *dev, struct wpabuf *msg)
{
	size_t len;
	FUNC1(MSG_DEBUG, "WPS:  * Device Name");
	FUNC2(msg, ATTR_DEV_NAME);
	len = dev->device_name ? FUNC0(dev->device_name) : 0;
#ifndef CONFIG_WPS_STRICT
	if (len == 0) {
		/*
		 * Some deployed WPS implementations fail to parse zero-length
		 * attributes. As a workaround, send a space character if the
		 * device attribute string is empty.
		 */
		FUNC2(msg, 1);
		FUNC4(msg, ' ');
		return 0;
	}
#endif /* CONFIG_WPS_STRICT */
	FUNC2(msg, len);
	FUNC3(msg, dev->device_name, len);
	return 0;
}
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
struct wps_device_data {int /*<<< orphan*/ * vendor_ext_m1; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_VENDOR_EXT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ *) ; 

int FUNC5(struct wps_device_data *dev, struct wpabuf *msg)
{
	if (dev->vendor_ext_m1 != NULL) {
		FUNC0(MSG_DEBUG, "WPS:  * Vendor Extension M1",
			    FUNC1(dev->vendor_ext_m1),
			    FUNC2(dev->vendor_ext_m1));
		FUNC3(msg, ATTR_VENDOR_EXT);
		FUNC3(msg, FUNC2(dev->vendor_ext_m1));
		FUNC4(msg, dev->vendor_ext_m1);
	}
	return 0;
}
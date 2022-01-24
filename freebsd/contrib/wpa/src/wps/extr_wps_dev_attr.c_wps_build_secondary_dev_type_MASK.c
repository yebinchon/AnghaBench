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
struct wps_device_data {int num_sec_dev_types; int /*<<< orphan*/  sec_dev_type; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_SECONDARY_DEV_TYPE_LIST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct wps_device_data *dev,
				  struct wpabuf *msg)
{
	if (!dev->num_sec_dev_types)
		return 0;

	FUNC0(MSG_DEBUG, "WPS:  * Secondary Device Type");
	FUNC1(msg, ATTR_SECONDARY_DEV_TYPE_LIST);
	FUNC1(msg, WPS_DEV_TYPE_LEN * dev->num_sec_dev_types);
	FUNC2(msg, dev->sec_dev_type,
			WPS_DEV_TYPE_LEN * dev->num_sec_dev_types);

	return 0;
}
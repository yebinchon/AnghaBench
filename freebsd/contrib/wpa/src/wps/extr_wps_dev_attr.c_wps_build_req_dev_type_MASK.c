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
struct wps_device_data {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 unsigned int ATTR_REQUESTED_DEV_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned int WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC3(struct wps_device_data *dev, struct wpabuf *msg,
			   unsigned int num_req_dev_types,
			   const u8 *req_dev_types)
{
	unsigned int i;

	for (i = 0; i < num_req_dev_types; i++) {
		FUNC0(MSG_DEBUG, "WPS: * Requested Device Type",
			    req_dev_types + i * WPS_DEV_TYPE_LEN,
			    WPS_DEV_TYPE_LEN);
		FUNC1(msg, ATTR_REQUESTED_DEV_TYPE);
		FUNC1(msg, WPS_DEV_TYPE_LEN);
		FUNC2(msg, req_dev_types + i * WPS_DEV_TYPE_LEN,
				WPS_DEV_TYPE_LEN);
	}

	return 0;
}
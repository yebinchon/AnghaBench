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
struct wps_device_data {int /*<<< orphan*/  pri_dev_type; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_PRIMARY_DEV_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct wps_device_data *dev, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG, "WPS:  * Primary Device Type");
	FUNC1(msg, ATTR_PRIMARY_DEV_TYPE);
	FUNC1(msg, WPS_DEV_TYPE_LEN);
	FUNC2(msg, dev->pri_dev_type, WPS_DEV_TYPE_LEN);
	return 0;
}
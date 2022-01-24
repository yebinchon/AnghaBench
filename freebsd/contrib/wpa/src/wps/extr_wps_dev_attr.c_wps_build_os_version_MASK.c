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
struct wps_device_data {int os_version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_OS_VERSION ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

int FUNC3(struct wps_device_data *dev, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG, "WPS:  * OS Version");
	FUNC1(msg, ATTR_OS_VERSION);
	FUNC1(msg, 4);
	FUNC2(msg, 0x80000000 | dev->os_version);
	return 0;
}
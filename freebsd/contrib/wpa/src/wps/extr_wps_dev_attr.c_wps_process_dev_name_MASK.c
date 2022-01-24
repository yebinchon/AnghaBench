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
struct wps_device_data {int /*<<< orphan*/ * device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct wps_device_data *dev, const u8 *str,
				size_t str_len)
{
	if (str == NULL) {
		FUNC3(MSG_DEBUG, "WPS: No Device Name received");
		return -1;
	}

	FUNC2(MSG_DEBUG, "WPS: Device Name", str, str_len);

	FUNC1(dev->device_name);
	dev->device_name = FUNC0(str, str_len);
	if (dev->device_name == NULL)
		return -1;

	return 0;
}
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
struct wps_device_data {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC1 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC2 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_device_data*,struct wpabuf*) ; 

int FUNC6(struct wps_device_data *dev, struct wpabuf *msg)
{
	if (FUNC1(dev, msg) ||
	    FUNC2(dev, msg) ||
	    FUNC3(dev, msg) ||
	    FUNC5(dev, msg) ||
	    FUNC4(dev, msg) ||
	    FUNC0(dev, msg))
		return -1;
	return 0;
}
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
typedef  scalar_t__ u8 ;
struct wps_device_data {scalar_t__ rf_bands; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wpabuf*,scalar_t__) ; 

int FUNC1(struct wps_device_data *dev, struct wpabuf *msg,
		       u8 rf_band)
{
	return FUNC0(msg, rf_band ? rf_band : dev->rf_bands);
}
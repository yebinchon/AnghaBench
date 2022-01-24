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
struct wps_registrar_device {int /*<<< orphan*/  uuid; int /*<<< orphan*/  dev; struct wps_registrar_device* next; } ;
struct wps_registrar {struct wps_registrar_device* devices; } ;
struct wps_device_data {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct wps_registrar_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wps_device_data*) ; 
 struct wps_registrar_device* FUNC3 (struct wps_registrar*,int /*<<< orphan*/ ) ; 

int FUNC4(struct wps_registrar *reg,
		     struct wps_device_data *dev, const u8 *uuid)
{
	struct wps_registrar_device *d;

	d = FUNC3(reg, dev->mac_addr);
	if (d == NULL) {
		d = FUNC1(sizeof(*d));
		if (d == NULL)
			return -1;
		d->next = reg->devices;
		reg->devices = d;
	}

	FUNC2(&d->dev, dev);
	FUNC0(d->uuid, uuid, WPS_UUID_LEN);

	return 0;
}
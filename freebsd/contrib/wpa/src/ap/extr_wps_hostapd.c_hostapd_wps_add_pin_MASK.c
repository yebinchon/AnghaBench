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
struct wps_add_pin_data {int timeout; scalar_t__ added; int /*<<< orphan*/ * uuid; int /*<<< orphan*/  pin_len; int /*<<< orphan*/  const* pin; int /*<<< orphan*/  const* addr; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int UUID_LEN ; 
 scalar_t__ FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,struct wps_add_pin_data*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wps_add_pin ; 

int FUNC4(struct hostapd_data *hapd, const u8 *addr,
			const char *uuid, const char *pin, int timeout)
{
	u8 u[UUID_LEN];
	struct wps_add_pin_data data;

	data.addr = addr;
	data.uuid = u;
	data.pin = (const u8 *) pin;
	data.pin_len = FUNC2(pin);
	data.timeout = timeout;
	data.added = 0;

	if (FUNC1(uuid, "any") == 0)
		data.uuid = NULL;
	else {
		if (FUNC3(uuid, u))
			return -1;
		data.uuid = u;
	}
	if (FUNC0(hapd, wps_add_pin, &data) < 0)
		return -1;
	return data.added ? 0 : -1;
}
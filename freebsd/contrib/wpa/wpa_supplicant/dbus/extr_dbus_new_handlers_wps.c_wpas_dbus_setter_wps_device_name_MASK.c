#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_2__ {char* device_name; int /*<<< orphan*/  changed_parameters; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_CHANGED_DEVICE_NAME ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WPS_DEV_NAME_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

dbus_bool_t FUNC5(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	char *methods, *devname;

	if (!FUNC4(iter, error, DBUS_TYPE_STRING,
					      &methods))
		return FALSE;

	if (FUNC2(methods) > WPS_DEV_NAME_MAX_LEN)
		return FALSE;

	devname = FUNC1(methods);
	if (!devname)
		return FALSE;

	FUNC0(wpa_s->conf->device_name);
	wpa_s->conf->device_name = devname;
	wpa_s->conf->changed_parameters |= CFG_CHANGED_DEVICE_NAME;
	FUNC3(wpa_s);

	return TRUE;
}
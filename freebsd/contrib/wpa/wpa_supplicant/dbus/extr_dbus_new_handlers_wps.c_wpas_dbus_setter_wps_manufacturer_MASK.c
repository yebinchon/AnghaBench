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
struct TYPE_2__ {char* manufacturer; int /*<<< orphan*/  changed_parameters; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_CHANGED_WPS_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WPS_MANUFACTURER_MAX_LEN ; 
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
	char *methods, *manufacturer;

	if (!FUNC4(iter, error, DBUS_TYPE_STRING,
					      &methods))
		return FALSE;

	if (FUNC2(methods) > WPS_MANUFACTURER_MAX_LEN)
		return FALSE;

	manufacturer = FUNC1(methods);
	if (!manufacturer)
		return FALSE;

	FUNC0(wpa_s->conf->manufacturer);
	wpa_s->conf->manufacturer = manufacturer;
	wpa_s->conf->changed_parameters |= CFG_CHANGED_WPS_STRING;
	FUNC3(wpa_s);

	return TRUE;
}
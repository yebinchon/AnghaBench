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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_dbus_property_desc {char const* data; int /*<<< orphan*/  dbus_property; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WPAS_DBUS_ERROR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (size_t,int) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 

dbus_bool_t FUNC7(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	const char *new_value = NULL;
	char buf[250];
	size_t combined_len;
	int ret;

	if (!FUNC6(iter, error, DBUS_TYPE_STRING,
					      &new_value))
		return FALSE;

	combined_len = FUNC3(property_desc->data) + FUNC3(new_value) +
		3;
	if (combined_len >= sizeof(buf)) {
		FUNC0(error, DBUS_ERROR_INVALID_ARGS,
			       "Interface property %s value too large",
			       property_desc->dbus_property);
		return FALSE;
	}

	if (!new_value[0])
		new_value = "NULL";

	ret = FUNC1(buf, combined_len, "%s=%s", property_desc->data,
			  new_value);
	if (FUNC2(combined_len, ret)) {
		FUNC0(error,  WPAS_DBUS_ERROR_UNKNOWN_ERROR,
			       "Failed to construct new interface property %s",
			       property_desc->dbus_property);
		return FALSE;
	}

	if (FUNC4(wpa_s->conf, buf, -1)) {
		FUNC0(error, DBUS_ERROR_INVALID_ARGS,
			       "Failed to set interface property %s",
			       property_desc->dbus_property);
		return FALSE;
	}

	FUNC5(wpa_s);
	return TRUE;
}
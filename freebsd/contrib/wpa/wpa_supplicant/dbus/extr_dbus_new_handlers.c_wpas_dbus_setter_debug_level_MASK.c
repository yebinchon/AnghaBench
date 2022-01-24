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
struct wpa_global {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__* debug_strings ; 
 scalar_t__ FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  wpa_debug_show_keys ; 
 int /*<<< orphan*/  wpa_debug_timestamp ; 
 scalar_t__ FUNC2 (struct wpa_global*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 

dbus_bool_t FUNC4(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_global *global = user_data;
	const char *str = NULL;
	int i, val = -1;

	if (!FUNC3(iter, error, DBUS_TYPE_STRING,
					      &str))
		return FALSE;

	for (i = 0; debug_strings[i]; i++)
		if (FUNC1(debug_strings[i], str) == 0) {
			val = i;
			break;
		}

	if (val < 0 ||
	    FUNC2(global, val, wpa_debug_timestamp,
					    wpa_debug_show_keys)) {
		FUNC0(error, DBUS_ERROR_FAILED,
				     "wrong debug level value");
		return FALSE;
	}

	return TRUE;
}
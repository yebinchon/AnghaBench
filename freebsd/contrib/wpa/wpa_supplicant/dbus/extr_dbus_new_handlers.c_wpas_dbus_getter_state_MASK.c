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
struct wpa_supplicant {int /*<<< orphan*/  wpa_state; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char FUNC3 (char) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

dbus_bool_t FUNC6(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	const char *str_state;
	char *state_ls, *tmp;
	dbus_bool_t success = FALSE;

	str_state = FUNC4(wpa_s->wpa_state);

	/* make state string lowercase to fit new DBus API convention
	 */
	state_ls = tmp = FUNC2(str_state);
	if (!tmp) {
		FUNC0(error, DBUS_ERROR_NO_MEMORY, "no memory");
		return FALSE;
	}
	while (*tmp) {
		*tmp = FUNC3(*tmp);
		tmp++;
	}

	success = FUNC5(iter, DBUS_TYPE_STRING,
						   &state_ls, error);

	FUNC1(state_ls);

	return success;
}
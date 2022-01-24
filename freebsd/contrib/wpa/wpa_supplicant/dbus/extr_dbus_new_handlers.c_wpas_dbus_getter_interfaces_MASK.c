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
struct wpa_supplicant {char* dbus_new_path; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char** FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,unsigned int,int /*<<< orphan*/ *) ; 

dbus_bool_t FUNC4(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_global *global = user_data;
	struct wpa_supplicant *wpa_s;
	const char **paths;
	unsigned int i = 0, num = 0;
	dbus_bool_t success;

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (wpa_s->dbus_new_path)
			num++;
	}

	paths = FUNC1(num, sizeof(char *));
	if (!paths) {
		FUNC0(error, DBUS_ERROR_NO_MEMORY, "no memory");
		return FALSE;
	}

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (wpa_s->dbus_new_path)
			paths[i++] = wpa_s->dbus_new_path;
	}

	success = FUNC3(iter,
							 DBUS_TYPE_OBJECT_PATH,
							 paths, num, error);

	FUNC2(paths);
	return success;
}
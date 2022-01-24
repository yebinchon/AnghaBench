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
struct wpa_supplicant {char* dbus_new_path; } ;
struct wpa_interface {char* driver; char* ifname; char* confname; char* bridge_ifname; } ;
struct wpa_global {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int /*<<< orphan*/  str_value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  iface ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  WPAS_DBUS_ERROR_IFACE_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_interface*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC12 (struct wpa_global*,struct wpa_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct wpa_global*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char*) ; 

DBusMessage * FUNC17(DBusMessage *message,
						 struct wpa_global *global)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *driver = NULL;
	char *ifname = NULL;
	char *confname = NULL;
	char *bridge_ifname = NULL;

	FUNC1(message, &iter);

	if (!FUNC11(&iter, &iter_dict, NULL))
		goto error;
	while (FUNC10(&iter_dict)) {
		if (!FUNC9(&iter_dict, &entry))
			goto error;
		if (FUNC6(entry.key, "Driver") == 0 &&
		    entry.type == DBUS_TYPE_STRING) {
			FUNC4(driver);
			driver = FUNC7(entry.str_value);
			FUNC8(&entry);
			if (driver == NULL)
				goto oom;
		} else if (FUNC6(entry.key, "Ifname") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			FUNC4(ifname);
			ifname = FUNC7(entry.str_value);
			FUNC8(&entry);
			if (ifname == NULL)
				goto oom;
		} else if (FUNC6(entry.key, "ConfigFile") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			FUNC4(confname);
			confname = FUNC7(entry.str_value);
			FUNC8(&entry);
			if (confname == NULL)
				goto oom;
		} else if (FUNC6(entry.key, "BridgeIfname") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			FUNC4(bridge_ifname);
			bridge_ifname = FUNC7(entry.str_value);
			FUNC8(&entry);
			if (bridge_ifname == NULL)
				goto oom;
		} else {
			FUNC8(&entry);
			goto error;
		}
	}

	if (ifname == NULL)
		goto error; /* Required Ifname argument missing */

	/*
	 * Try to get the wpa_supplicant record for this iface, return
	 * an error if we already control it.
	 */
	if (FUNC13(global, ifname) != NULL) {
		reply = FUNC2(
			message, WPAS_DBUS_ERROR_IFACE_EXISTS,
			"wpa_supplicant already controls this interface.");
	} else {
		struct wpa_supplicant *wpa_s;
		struct wpa_interface iface;

		FUNC5(&iface, 0, sizeof(iface));
		iface.driver = driver;
		iface.ifname = ifname;
		iface.confname = confname;
		iface.bridge_ifname = bridge_ifname;
		/* Otherwise, have wpa_supplicant attach to it. */
		wpa_s = FUNC12(global, &iface, NULL);
		if (wpa_s && wpa_s->dbus_new_path) {
			const char *path = wpa_s->dbus_new_path;

			reply = FUNC3(message);
			FUNC0(reply, DBUS_TYPE_OBJECT_PATH,
						 &path, DBUS_TYPE_INVALID);
		} else {
			reply = FUNC16(
				message,
				"wpa_supplicant couldn't grab this interface.");
		}
	}

out:
	FUNC4(driver);
	FUNC4(ifname);
	FUNC4(confname);
	FUNC4(bridge_ifname);
	return reply;

error:
	reply = FUNC14(message, NULL);
	goto out;
oom:
	reply = FUNC15(message);
	goto out;
}
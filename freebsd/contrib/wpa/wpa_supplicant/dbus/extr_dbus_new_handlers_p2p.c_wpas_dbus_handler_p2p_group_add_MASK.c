#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int /*<<< orphan*/  conf; TYPE_2__* parent; TYPE_1__* global; } ;
struct wpa_ssid {int disabled; } ;
struct wpa_dbus_dict_entry {char* key; scalar_t__ type; int bool_value; int int32_value; int /*<<< orphan*/  str_value; } ;
struct TYPE_4__ {char* dbus_new_path; } ;
struct TYPE_3__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_BOOLEAN ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct wpa_supplicant*,struct wpa_ssid*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DBusMessage * FUNC15(DBusMessage *message,
					      struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *pg_object_path = NULL;
	int persistent_group = 0;
	int freq = 0;
	char *iface = NULL;
	unsigned int group_id = 0;
	struct wpa_ssid *ssid;

	FUNC0(message, &iter);

	if (!FUNC9(&iter, &iter_dict, NULL))
		goto inv_args;

	while (FUNC8(&iter_dict)) {
		if (!FUNC7(&iter_dict, &entry))
			goto inv_args;

		if (FUNC2(entry.key, "persistent") == 0 &&
		    entry.type == DBUS_TYPE_BOOLEAN) {
			persistent_group = entry.bool_value;
		} else if (FUNC2(entry.key, "frequency") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			freq = entry.int32_value;
			if (freq <= 0)
				goto inv_args_clear;
		} else if (FUNC2(entry.key, "persistent_group_object") ==
			   0 &&
			   entry.type == DBUS_TYPE_OBJECT_PATH)
			pg_object_path = FUNC3(entry.str_value);
		else
			goto inv_args_clear;

		FUNC6(&entry);
	}

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (pg_object_path != NULL) {
		char *net_id_str;

		/*
		 * A persistent group Object Path is defined meaning we want
		 * to re-invoke a persistent group.
		 */

		iface = FUNC12(
			pg_object_path, WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART,
			&net_id_str);
		if (iface == NULL || net_id_str == NULL ||
		    !wpa_s->parent->dbus_new_path ||
		    FUNC2(iface, wpa_s->parent->dbus_new_path) != 0) {
			reply =
			    FUNC10(message,
							 pg_object_path);
			goto out;
		}

		group_id = FUNC4(net_id_str, NULL, 10);
		if (errno == EINVAL) {
			reply = FUNC10(
						message, pg_object_path);
			goto out;
		}

		/* Get the SSID structure from the persistent group id */
		ssid = FUNC5(wpa_s->conf, group_id);
		if (ssid == NULL || ssid->disabled != 2)
			goto inv_args;

		if (FUNC14(wpa_s, ssid, 0, freq, 0, 0, 0,
						  0, 0, 0, NULL, 0, 0)) {
			reply = FUNC11(
				message,
				"Failed to reinvoke a persistent group");
			goto out;
		}
	} else if (FUNC13(wpa_s, persistent_group, freq, 0, 0, 0,
				      0, 0))
		goto inv_args;

out:
	FUNC1(pg_object_path);
	FUNC1(iface);
	return reply;
inv_args_clear:
	FUNC6(&entry);
inv_args:
	reply = FUNC10(message, NULL);
	goto out;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/  ifname; int /*<<< orphan*/  conf; TYPE_2__* parent; TYPE_1__* global; } ;
struct wpa_ssid {int disabled; } ;
struct wpa_dbus_dict_entry {char* key; scalar_t__ type; int /*<<< orphan*/  str_value; } ;
struct TYPE_4__ {char* dbus_new_path; } ;
struct TYPE_3__ {struct wpa_supplicant* p2p_init_wpa_s; int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ EINVAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 struct wpa_ssid* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC16 (struct wpa_supplicant*,int /*<<< orphan*/ *,struct wpa_ssid*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DBusMessage * FUNC18(DBusMessage *message,
					   struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *peer_object_path = NULL;
	char *pg_object_path = NULL;
	char *iface = NULL;
	u8 peer_addr[ETH_ALEN];
	unsigned int group_id = 0;
	int persistent = 0;
	struct wpa_ssid *ssid;

	if (!FUNC12(wpa_s, message, &reply, NULL))
		return reply;

	FUNC0(message, &iter);

	if (!FUNC11(&iter, &iter_dict, NULL))
		goto err;

	while (FUNC10(&iter_dict)) {
		if (!FUNC9(&iter_dict, &entry))
			goto err;

		if (FUNC2(entry.key, "peer") == 0 &&
		    entry.type == DBUS_TYPE_OBJECT_PATH) {
			peer_object_path = FUNC3(entry.str_value);
			FUNC8(&entry);
		} else if (FUNC2(entry.key, "persistent_group_object") ==
			   0 &&
			   entry.type == DBUS_TYPE_OBJECT_PATH) {
			pg_object_path = FUNC3(entry.str_value);
			persistent = 1;
			FUNC8(&entry);
		} else {
			FUNC8(&entry);
			goto err;
		}
	}

	if (FUNC5(peer_object_path, peer_addr) < 0 ||
	    !FUNC4(wpa_s->global->p2p, peer_addr))
		goto err;

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (persistent) {
		char *net_id_str;
		/*
		 * A group ID is defined meaning we want to re-invoke a
		 * persistent group
		 */

		iface = FUNC15(
			pg_object_path,
			WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART,
			&net_id_str);
		if (iface == NULL || net_id_str == NULL ||
		    !wpa_s->parent->dbus_new_path ||
		    FUNC2(iface, wpa_s->parent->dbus_new_path) != 0) {
			reply = FUNC13(message,
							     pg_object_path);
			goto out;
		}

		group_id = FUNC6(net_id_str, NULL, 10);
		if (errno == EINVAL) {
			reply = FUNC13(
				message, pg_object_path);
			goto out;
		}

		/* Get the SSID structure from the persistent group id */
		ssid = FUNC7(wpa_s->conf, group_id);
		if (ssid == NULL || ssid->disabled != 2)
			goto err;

		if (FUNC16(wpa_s, peer_addr, ssid, NULL, 0, 0, 0, 0, 0,
				    0, 0) < 0) {
			reply = FUNC14(
				message,
				"Failed to reinvoke a persistent group");
			goto out;
		}
	} else {
		/*
		 * No group ID means propose to a peer to join my active group
		 */
		if (FUNC17(wpa_s, wpa_s->ifname,
					  peer_addr, NULL)) {
			reply = FUNC14(
				message, "Failed to join to an active group");
			goto out;
		}
	}

out:
	FUNC1(iface);
	FUNC1(pg_object_path);
	FUNC1(peer_object_path);
	return reply;

err:
	reply = FUNC13(message, NULL);
	goto out;
}
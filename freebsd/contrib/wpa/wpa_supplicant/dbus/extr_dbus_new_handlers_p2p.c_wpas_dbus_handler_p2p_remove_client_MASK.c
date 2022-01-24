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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int /*<<< orphan*/  str_value; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DBusMessage * FUNC14(DBusMessage *message,
						  struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *peer_object_path = NULL;
	char *interface_addr = NULL;
	u8 peer_addr[ETH_ALEN];

	if (!FUNC11(wpa_s, message, &reply, NULL))
		return reply;

	FUNC0(message, &iter);

	if (!FUNC10(&iter, &iter_dict, NULL))
		goto err;

	while (FUNC9(&iter_dict)) {
		if (!FUNC8(&iter_dict, &entry))
			goto err;

		if (FUNC3(entry.key, "peer") == 0 &&
		    entry.type == DBUS_TYPE_OBJECT_PATH) {
			FUNC2(peer_object_path);
			peer_object_path = FUNC4(entry.str_value);
			FUNC7(&entry);
		} else if (FUNC3(entry.key, "iface") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			FUNC2(interface_addr);
			interface_addr = FUNC4(entry.str_value);
			FUNC7(&entry);
		} else {
			FUNC7(&entry);
			goto err;
		}
	}

	if ((!peer_object_path && !interface_addr) ||
	    (peer_object_path &&
	     (FUNC6(peer_object_path, peer_addr) < 0 ||
	      !FUNC5(wpa_s->global->p2p, peer_addr))) ||
	    (interface_addr && FUNC1(interface_addr, peer_addr) < 0))
		goto err;

	FUNC13(wpa_s, peer_addr, interface_addr != NULL);
	reply = NULL;
out:
	FUNC2(peer_object_path);
	FUNC2(interface_addr);
	return reply;
err:
	reply = FUNC12(message, "Invalid address format");
	goto out;
}
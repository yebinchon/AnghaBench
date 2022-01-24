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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ uint32_value; scalar_t__ array_type; int /*<<< orphan*/  array_len; int /*<<< orphan*/  bytearray_value; int /*<<< orphan*/  key; int /*<<< orphan*/  str_value; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_UINT64 ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (struct wpa_supplicant*,scalar_t__*,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*,scalar_t__*,scalar_t__,char*) ; 

DBusMessage * FUNC18(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	int upnp = 0;
	char *service = NULL;
	char *peer_object_path = NULL;
	struct wpabuf *tlv = NULL;
	u8 version = 0;
	u64 ref = 0;
	u8 addr_buf[ETH_ALEN], *addr;

	FUNC1(message, &iter);

	if (!FUNC11(&iter, &iter_dict, NULL))
		goto error;

	while (FUNC10(&iter_dict)) {
		if (!FUNC9(&iter_dict, &entry))
			goto error;
		if (FUNC4(entry.key, "peer_object") == 0 &&
		    entry.type == DBUS_TYPE_OBJECT_PATH) {
			peer_object_path = FUNC5(entry.str_value);
		} else if (FUNC4(entry.key, "service_type") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			if (FUNC4(entry.str_value, "upnp") == 0)
				upnp = 1;
			else
				goto error_clear;
		} else if (FUNC4(entry.key, "version") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			version = entry.uint32_value;
		} else if (FUNC4(entry.key, "service") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			service = FUNC5(entry.str_value);
		} else if (FUNC4(entry.key, "tlv") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != DBUS_TYPE_BYTE)
				goto error_clear;
			tlv = FUNC12(entry.bytearray_value,
						entry.array_len);
		} else
			goto error_clear;

		FUNC8(&entry);
	}

	if (!peer_object_path) {
		addr = NULL;
	} else {
		if (FUNC7(peer_object_path, addr_buf) < 0 ||
		    !FUNC6(wpa_s->global->p2p, addr_buf))
			goto error;

		addr = addr_buf;
	}

	if (upnp == 1) {
		if (version <= 0 || service == NULL)
			goto error;

		ref = FUNC17(wpa_s, addr, version, service);
	} else {
		if (tlv == NULL)
			goto error;
		ref = FUNC16(wpa_s, addr, tlv);
		FUNC13(tlv);
	}

	if (ref != 0) {
		reply = FUNC2(message);
		FUNC0(reply, DBUS_TYPE_UINT64,
					 &ref, DBUS_TYPE_INVALID);
	} else {
		reply = FUNC15(
			message, "Unable to send SD request");
	}
out:
	FUNC3(service);
	FUNC3(peer_object_path);
	return reply;
error_clear:
	FUNC8(&entry);
error:
	if (tlv)
		FUNC13(tlv);
	reply = FUNC14(message, NULL);
	goto out;
}
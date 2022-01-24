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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int uint32_value; scalar_t__ array_type; int /*<<< orphan*/  array_len; int /*<<< orphan*/  bytearray_value; int /*<<< orphan*/  key; int /*<<< orphan*/  str_value; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ DBUS_TYPE_UINT32 ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpabuf*) ; 

DBusMessage * FUNC14(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *peer_object_path = NULL;
	struct wpabuf *tlv = NULL;
	int freq = 0;
	int dlg_tok = 0;
	u8 addr[ETH_ALEN];

	FUNC0(message, &iter);

	if (!FUNC9(&iter, &iter_dict, NULL))
		goto error;

	while (FUNC8(&iter_dict)) {
		if (!FUNC7(&iter_dict, &entry))
			goto error;

		if (FUNC2(entry.key, "peer_object") == 0 &&
		    entry.type == DBUS_TYPE_OBJECT_PATH) {
			peer_object_path = FUNC3(entry.str_value);
		} else if (FUNC2(entry.key, "frequency") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			freq = entry.uint32_value;
		} else if (FUNC2(entry.key, "dialog_token") == 0 &&
			   (entry.type == DBUS_TYPE_UINT32 ||
			    entry.type == DBUS_TYPE_INT32)) {
			dlg_tok = entry.uint32_value;
		} else if (FUNC2(entry.key, "tlvs") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != DBUS_TYPE_BYTE)
				goto error_clear;
			tlv = FUNC10(entry.bytearray_value,
						entry.array_len);
		} else
			goto error_clear;

		FUNC6(&entry);
	}
	if (FUNC5(peer_object_path, addr) < 0 ||
	    !FUNC4(wpa_s->global->p2p, addr) ||
	    tlv == NULL)
		goto error;

	FUNC13(wpa_s, freq, addr, (u8) dlg_tok, tlv);
	FUNC11(tlv);
out:
	FUNC1(peer_object_path);
	return reply;
error_clear:
	FUNC6(&entry);
error:
	reply = FUNC12(message, NULL);
	goto out;
}
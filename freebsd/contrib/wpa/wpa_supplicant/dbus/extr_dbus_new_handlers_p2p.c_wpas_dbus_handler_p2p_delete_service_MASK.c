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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ uint32_value; scalar_t__ array_type; int /*<<< orphan*/  array_len; int /*<<< orphan*/  bytearray_value; int /*<<< orphan*/  key; int /*<<< orphan*/  str_value; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct wpa_supplicant*,struct wpabuf*) ; 
 int FUNC12 (struct wpa_supplicant*,scalar_t__,char*) ; 

DBusMessage * FUNC13(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	int upnp = 0;
	int bonjour = 0;
	int ret = 0;
	char *service = NULL;
	struct wpabuf *query = NULL;
	u8 version = 0;

	FUNC0(message, &iter);

	if (!FUNC7(&iter, &iter_dict, NULL))
		goto error;

	while (FUNC6(&iter_dict)) {
		if (!FUNC5(&iter_dict, &entry))
			goto error;

		if (FUNC2(entry.key, "service_type") == 0 &&
		    entry.type == DBUS_TYPE_STRING) {
			if (FUNC2(entry.str_value, "upnp") == 0)
				upnp = 1;
			else if (FUNC2(entry.str_value, "bonjour") == 0)
				bonjour = 1;
			else
				goto error_clear;
		} else if (FUNC2(entry.key, "version") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			version = entry.uint32_value;
		} else if (FUNC2(entry.key, "service") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			FUNC1(service);
			service = FUNC3(entry.str_value);
		} else if (FUNC2(entry.key, "query") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != DBUS_TYPE_BYTE)
				goto error_clear;
			FUNC9(query);
			query = FUNC8(entry.bytearray_value,
						  entry.array_len);
		} else {
			goto error_clear;
		}

		FUNC4(&entry);
	}
	if (upnp == 1) {
		if (version <= 0 || service == NULL)
			goto error;

		ret = FUNC12(wpa_s, version, service);
		if (ret != 0)
			goto error;
	} else if (bonjour == 1) {
		if (query == NULL)
			goto error;

		ret = FUNC11(wpa_s, query);
		if (ret != 0)
			goto error;
	} else
		goto error;

	FUNC9(query);
	FUNC1(service);
	return reply;
error_clear:
	FUNC4(&entry);
error:
	FUNC9(query);
	FUNC1(service);
	return FUNC10(message, NULL);
}
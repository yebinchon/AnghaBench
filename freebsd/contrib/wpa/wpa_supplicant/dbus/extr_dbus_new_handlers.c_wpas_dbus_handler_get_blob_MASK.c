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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_config_blob {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE_AS_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  WPAS_DBUS_ERROR_BLOB_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct wpa_config_blob* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

DBusMessage * FUNC10(DBusMessage *message,
					 struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;
	DBusMessageIter	iter, array_iter;

	char *blob_name;
	const struct wpa_config_blob *blob;

	FUNC0(message, NULL, DBUS_TYPE_STRING, &blob_name,
			      DBUS_TYPE_INVALID);

	blob = FUNC8(wpa_s->conf, blob_name);
	if (!blob) {
		return FUNC5(message,
					      WPAS_DBUS_ERROR_BLOB_UNKNOWN,
					      "Blob id not set");
	}

	reply = FUNC6(message);
	if (!reply)
		return FUNC9(message);

	FUNC3(reply, &iter);

	if (!FUNC4(&iter, DBUS_TYPE_ARRAY,
					      DBUS_TYPE_BYTE_AS_STRING,
					      &array_iter) ||
	    !FUNC1(&array_iter, DBUS_TYPE_BYTE,
						  &(blob->data), blob->len) ||
	    !FUNC2(&iter, &array_iter)) {
		FUNC7(reply);
		reply = FUNC9(message);
	}

	return reply;
}
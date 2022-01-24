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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_config_blob {int len; struct wpa_config_blob* data; struct wpa_config_blob* name; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  WPAS_DBUS_ERROR_BLOB_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_config_blob*) ; 
 struct wpa_config_blob* FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct wpa_config_blob* FUNC8 (char*) ; 
 struct wpa_config_blob* FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct wpa_config_blob*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,struct wpa_config_blob*) ; 

DBusMessage * FUNC14(DBusMessage *message,
					 struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;
	DBusMessageIter	iter, array_iter;

	char *blob_name;
	u8 *blob_data;
	int blob_len;
	struct wpa_config_blob *blob = NULL;

	FUNC2(message, &iter);
	FUNC0(&iter, &blob_name);

	if (FUNC10(wpa_s->conf, blob_name)) {
		return FUNC5(message,
					      WPAS_DBUS_ERROR_BLOB_EXISTS,
					      NULL);
	}

	FUNC3(&iter);
	FUNC4(&iter, &array_iter);

	FUNC1(&array_iter, &blob_data, &blob_len);

	blob = FUNC9(sizeof(*blob));
	if (!blob) {
		reply = FUNC12(message);
		goto err;
	}

	blob->data = FUNC7(blob_data, blob_len);
	blob->name = FUNC8(blob_name);
	if (!blob->data || !blob->name) {
		reply = FUNC12(message);
		goto err;
	}
	blob->len = blob_len;

	FUNC11(wpa_s->conf, blob);
	FUNC13(wpa_s, blob->name);

	return reply;

err:
	if (blob) {
		FUNC6(blob->name);
		FUNC6(blob->data);
		FUNC6(blob);
	}
	return reply;
}
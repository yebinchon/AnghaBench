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
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  WPAS_DBUS_ERROR_BLOB_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,char*) ; 

DBusMessage * FUNC4(DBusMessage *message,
					    struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;
	char *blob_name;

	FUNC0(message, NULL, DBUS_TYPE_STRING, &blob_name,
			      DBUS_TYPE_INVALID);

	if (FUNC2(wpa_s->conf, blob_name)) {
		return FUNC1(message,
					      WPAS_DBUS_ERROR_BLOB_UNKNOWN,
					      "Blob id not set");
	}
	FUNC3(wpa_s, blob_name);

	return reply;

}
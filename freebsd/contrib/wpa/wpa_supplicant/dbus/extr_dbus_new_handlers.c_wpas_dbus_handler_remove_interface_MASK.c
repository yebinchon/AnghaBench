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
struct wpa_supplicant {int dummy; } ;
struct wpa_global {int dummy; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 struct wpa_supplicant* FUNC1 (struct wpa_global*,char*) ; 
 scalar_t__ FUNC2 (struct wpa_global*,struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 

DBusMessage * FUNC5(DBusMessage *message,
						 struct wpa_global *global)
{
	struct wpa_supplicant *wpa_s;
	char *path;
	DBusMessage *reply = NULL;

	FUNC0(message, NULL, DBUS_TYPE_OBJECT_PATH, &path,
			      DBUS_TYPE_INVALID);

	wpa_s = FUNC1(global, path);
	if (wpa_s == NULL)
		reply = FUNC3(message);
	else if (FUNC2(global, wpa_s, 0)) {
		reply = FUNC4(
			message,
			"wpa_supplicant couldn't remove this interface.");
	}

	return reply;
}
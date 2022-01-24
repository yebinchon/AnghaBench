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
struct wpa_supplicant {char* dbus_new_path; } ;
struct wpa_global {int dummy; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC4 (struct wpa_global*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

DBusMessage * FUNC7(DBusMessage *message,
					      struct wpa_global *global)
{
	DBusMessage *reply = NULL;
	const char *ifname;
	const char *path;
	struct wpa_supplicant *wpa_s;

	FUNC1(message, NULL, DBUS_TYPE_STRING, &ifname,
			      DBUS_TYPE_INVALID);

	wpa_s = FUNC4(global, ifname);
	if (wpa_s == NULL || wpa_s->dbus_new_path == NULL)
		return FUNC5(message);

	path = wpa_s->dbus_new_path;
	reply = FUNC2(message);
	if (reply == NULL)
		return FUNC6(message);
	if (!FUNC0(reply, DBUS_TYPE_OBJECT_PATH, &path,
				      DBUS_TYPE_INVALID)) {
		FUNC3(reply);
		return FUNC6(message);
	}

	return reply;
}
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
struct wpa_supplicant {int /*<<< orphan*/  conf; int /*<<< orphan*/  dbus_new_path; } ;
struct wpa_ssid {int dummy; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_NETWORKS_PART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 struct wpa_ssid* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ,char**) ; 

DBusMessage * FUNC9(DBusMessage *message,
					       struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;
	const char *op;
	char *iface, *net_id;
	int id;
	struct wpa_ssid *ssid;

	FUNC0(message, NULL, DBUS_TYPE_OBJECT_PATH, &op,
			      DBUS_TYPE_INVALID);

	/* Extract the network ID and ensure the network */
	/* is actually a child of this interface */
	iface = FUNC8(op,
						    WPAS_DBUS_NEW_NETWORKS_PART,
						    &net_id);
	if (iface == NULL || net_id == NULL || !wpa_s->dbus_new_path ||
	    FUNC2(iface, wpa_s->dbus_new_path) != 0) {
		reply = FUNC6(message, op);
		goto out;
	}

	errno = 0;
	id = FUNC3(net_id, NULL, 10);
	if (errno != 0) {
		reply = FUNC6(message, op);
		goto out;
	}

	ssid = FUNC4(wpa_s->conf, id);
	if (ssid == NULL) {
		reply = FUNC7(message);
		goto out;
	}

	/* Finally, associate with the network */
	FUNC5(wpa_s, ssid);

out:
	FUNC1(iface);
	return reply;
}
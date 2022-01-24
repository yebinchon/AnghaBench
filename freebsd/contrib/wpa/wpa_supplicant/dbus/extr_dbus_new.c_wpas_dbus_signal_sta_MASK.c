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
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;
struct wpa_supplicant {int /*<<< orphan*/  dbus_new_path; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  MACSTR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_IFACE_INTERFACE ; 
 int WPAS_DBUS_OBJECT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s,
				 const u8 *sta, const char *sig_name)
{
	struct wpas_dbus_priv *iface;
	DBusMessage *msg;
	char sta_mac[WPAS_DBUS_OBJECT_PATH_MAX];
	char *dev_mac;

	FUNC5(sta_mac, WPAS_DBUS_OBJECT_PATH_MAX, MACSTR, FUNC0(sta));
	dev_mac = sta_mac;

	iface = wpa_s->global->dbus;

	/* Do nothing if the control interface is not turned on */
	if (iface == NULL || !wpa_s->dbus_new_path)
		return;

	msg = FUNC3(wpa_s->dbus_new_path,
				      WPAS_DBUS_NEW_IFACE_INTERFACE, sig_name);
	if (msg == NULL)
		return;

	if (FUNC2(msg, DBUS_TYPE_STRING, &dev_mac,
				     DBUS_TYPE_INVALID))
		FUNC1(iface->con, msg, NULL);
	else
		FUNC6(MSG_ERROR, "dbus: Failed to construct signal");
	FUNC4(msg);

	FUNC6(MSG_DEBUG, "dbus: Station MAC address '%s' '%s'",
		   sta_mac, sig_name);
}
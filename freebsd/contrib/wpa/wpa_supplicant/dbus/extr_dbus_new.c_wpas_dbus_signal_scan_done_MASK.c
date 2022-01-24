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
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;
struct wpa_supplicant {int /*<<< orphan*/  dbus_new_path; TYPE_1__* global; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_IFACE_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct wpa_supplicant *wpa_s, int success)
{
	struct wpas_dbus_priv *iface;
	DBusMessage *msg;
	dbus_bool_t succ;

	iface = wpa_s->global->dbus;

	/* Do nothing if the control interface is not turned on */
	if (iface == NULL || !wpa_s->dbus_new_path)
		return;

	msg = FUNC2(wpa_s->dbus_new_path,
				      WPAS_DBUS_NEW_IFACE_INTERFACE,
				      "ScanDone");
	if (msg == NULL)
		return;

	succ = success ? TRUE : FALSE;
	if (FUNC1(msg, DBUS_TYPE_BOOLEAN, &succ,
				     DBUS_TYPE_INVALID))
		FUNC0(iface->con, msg, NULL);
	else
		FUNC4(MSG_ERROR, "dbus: Failed to construct signal");
	FUNC3(msg);
}
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
struct wpas_dbus_priv {int dummy; } ;
struct wpa_supplicant {int /*<<< orphan*/ * dbus_new_path; int /*<<< orphan*/ * preq_notify_peer; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpas_dbus_priv*) ; 

int FUNC5(struct wpa_supplicant *wpa_s)
{
	struct wpas_dbus_priv *ctrl_iface;

	/* Do nothing if the control interface is not turned on */
	if (wpa_s == NULL || wpa_s->global == NULL)
		return 0;
	ctrl_iface = wpa_s->global->dbus;
	if (ctrl_iface == NULL || wpa_s->dbus_new_path == NULL)
		return 0;

	FUNC2(MSG_DEBUG, "dbus: Unregister interface object '%s'",
		   wpa_s->dbus_new_path);

#ifdef CONFIG_AP
	if (wpa_s->preq_notify_peer) {
		wpas_dbus_unsubscribe_noc(ctrl_iface);
		os_free(wpa_s->preq_notify_peer);
		wpa_s->preq_notify_peer = NULL;
	}
#endif /* CONFIG_AP */

	if (FUNC1(ctrl_iface,
						 wpa_s->dbus_new_path))
		return -1;

	FUNC3(wpa_s);

	FUNC0(wpa_s->dbus_new_path);
	wpa_s->dbus_new_path = NULL;

	return 0;
}
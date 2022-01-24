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
struct wpas_dbus_priv {struct wpa_global* global; } ;
struct wpa_global {int dummy; } ;

/* Variables and functions */
 struct wpas_dbus_priv* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpas_dbus_priv*) ; 
 scalar_t__ FUNC3 (struct wpas_dbus_priv*) ; 
 scalar_t__ FUNC4 (struct wpas_dbus_priv*) ; 

struct wpas_dbus_priv * FUNC5(struct wpa_global *global)
{
	struct wpas_dbus_priv *priv;

	priv = FUNC0(sizeof(*priv));
	if (priv == NULL)
		return NULL;
	priv->global = global;

	if (FUNC3(priv) < 0 ||
#ifdef CONFIG_CTRL_IFACE_DBUS_NEW
	    wpas_dbus_ctrl_iface_init(priv) < 0 ||
#endif /* CONFIG_CTRL_IFACE_DBUS_NEW */
	    FUNC4(priv) < 0) {
		FUNC2(priv);
		return NULL;
	}

	return priv;
}
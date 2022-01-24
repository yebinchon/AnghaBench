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
struct wpas_dbus_priv {int /*<<< orphan*/  con; int /*<<< orphan*/  dbus_new_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpas_dbus_priv *priv)
{
	if (!priv->dbus_new_initialized)
		return;
	FUNC2(MSG_DEBUG, "dbus: Unregister D-Bus object '%s'",
		   WPAS_DBUS_NEW_PATH);
	FUNC0(priv->con, WPAS_DBUS_NEW_PATH);
	FUNC1(priv);
}
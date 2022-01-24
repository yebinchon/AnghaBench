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
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;

/* Variables and functions */
 int /*<<< orphan*/  dispatch_initial_dbus_messages ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpas_dbus_priv*) ; 

__attribute__((used)) static int FUNC2(struct wpas_dbus_priv *priv)
{
	/* Tell dbus about our mainloop integration functions */
	FUNC1(priv);

	/*
	 * Dispatch initial DBus messages that may have come in since the bus
	 * name was claimed above. Happens when clients are quick to notice the
	 * service.
	 *
	 * FIXME: is there a better solution to this problem?
	 */
	FUNC0(0, 50, dispatch_initial_dbus_messages,
			       priv->con, NULL);

	return 0;
}
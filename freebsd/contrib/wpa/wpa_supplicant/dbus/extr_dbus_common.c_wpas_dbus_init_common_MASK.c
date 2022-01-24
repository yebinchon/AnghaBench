#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;
struct TYPE_5__ {int /*<<< orphan*/  message; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_BUS_SYSTEM ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  disconnect_filter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wpas_dbus_priv *priv)
{
	DBusError error;
	int ret = 0;

	/* Get a reference to the system bus */
	FUNC3(&error);
	priv->con = FUNC0(DBUS_BUS_SYSTEM, &error);
	if (priv->con) {
		FUNC1(priv->con, disconnect_filter, priv,
					   NULL);
	} else {
		FUNC4(MSG_ERROR,
			   "dbus: Could not acquire the system bus: %s - %s",
			   error.name, error.message);
		ret = -1;
	}
	FUNC2(&error);

	return ret;
}
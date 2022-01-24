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
struct wpas_dbus_priv {int /*<<< orphan*/  global; } ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusHandlerResult ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_HANDLED ; 
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_NOT_YET_HANDLED ; 
 int /*<<< orphan*/  DBUS_INTERFACE_LOCAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DBusHandlerResult FUNC4(DBusConnection *conn,
					   DBusMessage *message, void *data)
{
	struct wpas_dbus_priv *priv = data;

	if (FUNC1(message, DBUS_INTERFACE_LOCAL,
				   "Disconnected")) {
		FUNC2(MSG_DEBUG, "dbus: bus disconnected, terminating");
		FUNC0(conn, FALSE);
		FUNC3(priv->global);
		return DBUS_HANDLER_RESULT_HANDLED;
	} else
		return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;
}
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
struct wpas_dbus_priv {int /*<<< orphan*/  con; scalar_t__ should_dispatch; } ;
typedef  scalar_t__ eloop_event_type ;
typedef  int /*<<< orphan*/  DBusWatch ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_WATCH_ERROR ; 
 int /*<<< orphan*/  DBUS_WATCH_READABLE ; 
 int /*<<< orphan*/  DBUS_WATCH_WRITABLE ; 
 scalar_t__ EVENT_TYPE_EXCEPTION ; 
 scalar_t__ EVENT_TYPE_READ ; 
 scalar_t__ EVENT_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wpas_dbus_priv *priv,
			  DBusWatch *watch, eloop_event_type type)
{
	FUNC0(priv->con);

	priv->should_dispatch = 0;

	if (type == EVENT_TYPE_READ)
		FUNC2(watch, DBUS_WATCH_READABLE);
	else if (type == EVENT_TYPE_WRITE)
		FUNC2(watch, DBUS_WATCH_WRITABLE);
	else if (type == EVENT_TYPE_EXCEPTION)
		FUNC2(watch, DBUS_WATCH_ERROR);

	if (priv->should_dispatch) {
		FUNC3(priv->con);
		priv->should_dispatch = 0;
	}

	FUNC1(priv->con);
}
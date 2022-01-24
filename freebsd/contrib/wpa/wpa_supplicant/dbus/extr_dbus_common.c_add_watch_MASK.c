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
struct wpas_dbus_priv {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusWatch ;

/* Variables and functions */
 unsigned int DBUS_WATCH_READABLE ; 
 unsigned int DBUS_WATCH_WRITABLE ; 
 int /*<<< orphan*/  EVENT_TYPE_EXCEPTION ; 
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  EVENT_TYPE_WRITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_watch_exception ; 
 int /*<<< orphan*/  process_watch_read ; 
 int /*<<< orphan*/  process_watch_write ; 

__attribute__((used)) static dbus_bool_t FUNC5(DBusWatch *watch, void *data)
{
	struct wpas_dbus_priv *priv = data;
	unsigned int flags;
	int fd;

	if (!FUNC0(watch))
		return TRUE;

	flags = FUNC1(watch);
	fd = FUNC2(watch);

	FUNC4(fd, EVENT_TYPE_EXCEPTION, process_watch_exception,
			    priv, watch);

	if (flags & DBUS_WATCH_READABLE) {
		FUNC4(fd, EVENT_TYPE_READ, process_watch_read,
				    priv, watch);
	}
	if (flags & DBUS_WATCH_WRITABLE) {
		FUNC4(fd, EVENT_TYPE_WRITE, process_watch_write,
				    priv, watch);
	}

	FUNC3(watch, priv, NULL);

	return TRUE;
}
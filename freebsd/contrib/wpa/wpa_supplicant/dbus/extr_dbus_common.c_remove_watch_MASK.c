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
typedef  int /*<<< orphan*/  DBusWatch ;

/* Variables and functions */
 unsigned int DBUS_WATCH_READABLE ; 
 unsigned int DBUS_WATCH_WRITABLE ; 
 int /*<<< orphan*/  EVENT_TYPE_EXCEPTION ; 
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  EVENT_TYPE_WRITE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DBusWatch *watch, void *data)
{
	unsigned int flags;
	int fd;

	flags = FUNC0(watch);
	fd = FUNC1(watch);

	FUNC3(fd, EVENT_TYPE_EXCEPTION);

	if (flags & DBUS_WATCH_READABLE)
		FUNC3(fd, EVENT_TYPE_READ);
	if (flags & DBUS_WATCH_WRITABLE)
		FUNC3(fd, EVENT_TYPE_WRITE);

	FUNC2(watch, NULL, NULL);
}
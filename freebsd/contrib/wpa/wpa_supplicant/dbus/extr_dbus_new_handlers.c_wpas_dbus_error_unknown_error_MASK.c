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
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  WPAS_DBUS_ERROR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

DBusMessage * FUNC1(DBusMessage *message,
					    const char *arg)
{
	return FUNC0(message, WPAS_DBUS_ERROR_UNKNOWN_ERROR,
				      arg);
}
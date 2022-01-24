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
struct wps_start_params {int type; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(DBusMessage *message,
				      DBusMessageIter *entry_iter,
				      struct wps_start_params *params,
				      DBusMessage **reply)
{
	DBusMessageIter variant_iter;
	char *val;

	FUNC2(entry_iter, &variant_iter);
	if (FUNC0(&variant_iter) != DBUS_TYPE_STRING) {
		FUNC4(MSG_DEBUG,
			   "dbus: WPS.Start - Wrong Type type, string required");
		*reply = FUNC5(message,
						      "Type must be a string");
		return -1;
	}
	FUNC1(&variant_iter, &val);
	if (FUNC3(val, "pin") == 0)
		params->type = 1;
	else if (FUNC3(val, "pbc") == 0)
		params->type = 2;
	else {
		FUNC4(MSG_DEBUG, "dbus: WPS.Start - Unknown type %s",
			   val);
		*reply = FUNC5(message, val);
		return -1;
	}
	return 0;
}
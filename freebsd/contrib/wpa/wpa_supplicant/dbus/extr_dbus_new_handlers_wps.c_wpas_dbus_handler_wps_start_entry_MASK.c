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
struct wps_start_params {int dummy; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC8(DBusMessage *message, char *key,
					     DBusMessageIter *entry_iter,
					     struct wps_start_params *params,
					     DBusMessage **reply)
{
	if (FUNC0(key, "Role") == 0)
		return FUNC6(message, entry_iter,
						  params, reply);
	else if (FUNC0(key, "Type") == 0)
		return FUNC7(message, entry_iter,
						  params, reply);
	else if (FUNC0(key, "Bssid") == 0)
		return FUNC3(message, entry_iter,
						   params, reply);
	else if (FUNC0(key, "Pin") == 0)
		return FUNC5(message, entry_iter,
						 params, reply);
#ifdef CONFIG_P2P
	else if (os_strcmp(key, "P2PDeviceAddress") == 0)
		return wpas_dbus_handler_wps_p2p_dev_addr(message, entry_iter,
							  params, reply);
#endif /* CONFIG_P2P */

	FUNC1(MSG_DEBUG, "dbus: WPS.Start - unknown key %s", key);
	*reply = FUNC2(message, key);
	return -1;
}
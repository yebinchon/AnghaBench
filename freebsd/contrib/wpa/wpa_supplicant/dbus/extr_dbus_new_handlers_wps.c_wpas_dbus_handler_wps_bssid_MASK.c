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
struct wps_start_params {int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(DBusMessage *message,
				       DBusMessageIter *entry_iter,
				       struct wps_start_params *params,
				       DBusMessage **reply)
{
	DBusMessageIter variant_iter, array_iter;
	int len;

	FUNC3(entry_iter, &variant_iter);
	if (FUNC0(&variant_iter) != DBUS_TYPE_ARRAY ||
	    FUNC1(&variant_iter) !=
	    DBUS_TYPE_BYTE) {
		FUNC4(MSG_DEBUG,
			   "dbus: WPS.Start - Wrong Bssid type, byte array required");
		*reply = FUNC5(
			message, "Bssid must be a byte array");
		return -1;
	}
	FUNC3(&variant_iter, &array_iter);
	FUNC2(&array_iter, &params->bssid, &len);
	if (len != ETH_ALEN) {
		FUNC4(MSG_DEBUG, "dbus: WPS.Start - Wrong Bssid length %d",
			   len);
		*reply = FUNC5(message,
						      "Bssid is wrong length");
		return -1;
	}
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; unsigned int uint32_value; int /*<<< orphan*/ * key; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (struct wpa_supplicant*,unsigned int,unsigned int) ; 

DBusMessage * FUNC9(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	unsigned int period = 0, interval = 0;
	struct wpa_dbus_dict_entry entry;
	DBusMessageIter iter;
	DBusMessageIter iter_dict;

	FUNC0(message, &iter);
	entry.key = NULL;

	if (!FUNC5(&iter, &iter_dict, NULL))
		goto error;

	while (FUNC4(&iter_dict)) {
		if (!FUNC3(&iter_dict, &entry))
			goto error;

		if (FUNC1(entry.key, "period") == 0 &&
		    entry.type == DBUS_TYPE_INT32)
			period = entry.uint32_value;
		else if (FUNC1(entry.key, "interval") == 0 &&
			 entry.type == DBUS_TYPE_INT32)
			interval = entry.uint32_value;
		else
			goto error_clear;
		FUNC2(&entry);
	}

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (FUNC8(wpa_s, period, interval))
		return FUNC7(
			message, "failed to initiate a p2p_ext_listen.");

	return NULL;

error_clear:
	FUNC2(&entry);
error:
	return FUNC6(message, entry.key);
}
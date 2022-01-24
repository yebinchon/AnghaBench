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
struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; unsigned int uint32_value; int /*<<< orphan*/ * key; } ;
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
 scalar_t__ FUNC8 (struct wpa_supplicant*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

DBusMessage * FUNC9(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	unsigned int dur1 = 0, int1 = 0, dur2 = 0, int2 = 0;
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

		if (FUNC1(entry.key, "duration1") == 0 &&
		    entry.type == DBUS_TYPE_INT32)
			dur1 = entry.uint32_value;
		else if (FUNC1(entry.key, "interval1") == 0 &&
			 entry.type == DBUS_TYPE_INT32)
			int1 = entry.uint32_value;
		else if (FUNC1(entry.key, "duration2") == 0 &&
			 entry.type == DBUS_TYPE_INT32)
			dur2 = entry.uint32_value;
		else if (FUNC1(entry.key, "interval2") == 0 &&
			 entry.type == DBUS_TYPE_INT32)
			int2 = entry.uint32_value;
		else
			goto error_clear;

		FUNC2(&entry);
	}

	if (FUNC8(wpa_s, dur1, int1, dur2, int2) < 0)
		return FUNC7(message,
				"Failed to invoke presence request.");

	return NULL;

error_clear:
	FUNC2(&entry);
error:
	return FUNC6(message, entry.key);
}
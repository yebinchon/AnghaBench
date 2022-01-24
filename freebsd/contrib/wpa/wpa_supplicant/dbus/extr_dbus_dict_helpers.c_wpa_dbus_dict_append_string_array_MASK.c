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
typedef  scalar_t__ dbus_uint32_t ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

dbus_bool_t FUNC3(DBusMessageIter *iter_dict,
					      const char *key,
					      const char **items,
					      const dbus_uint32_t num_items)
{
	DBusMessageIter iter_dict_entry, iter_dict_val, iter_array;
	dbus_uint32_t i;

	if (!key || (!items && num_items != 0) ||
	    !FUNC0(iter_dict, key,
					      &iter_dict_entry, &iter_dict_val,
					      &iter_array))
		return FALSE;

	for (i = 0; i < num_items; i++) {
		if (!FUNC2(&iter_array,
							    items[i]))
			return FALSE;
	}

	return FUNC1(iter_dict, &iter_dict_entry,
					      &iter_dict_val, &iter_array);
}
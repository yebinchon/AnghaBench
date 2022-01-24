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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,scalar_t__ const) ; 

dbus_bool_t FUNC1(DBusMessageIter *iter_dict,
					    const char *key,
					    const char *value,
					    const dbus_uint32_t value_len)
{
	if (!key || (!value && value_len != 0))
		return FALSE;
	return FUNC0(iter_dict, key, value,
						   value_len);
}
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
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_DICT_ENTRY ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static dbus_bool_t FUNC2(
	DBusMessageIter *iter_dict, DBusMessageIter *iter_dict_entry,
	const char *key, const int value_type)
{
	if (!FUNC1(iter_dict,
					      DBUS_TYPE_DICT_ENTRY, NULL,
					      iter_dict_entry))
		return FALSE;

	return FUNC0(iter_dict_entry, DBUS_TYPE_STRING,
					      &key);
}
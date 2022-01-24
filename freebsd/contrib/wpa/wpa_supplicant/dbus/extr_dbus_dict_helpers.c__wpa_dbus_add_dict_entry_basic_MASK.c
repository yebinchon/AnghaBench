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
 int /*<<< orphan*/  DBUS_TYPE_VARIANT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int const) ; 

__attribute__((used)) static dbus_bool_t FUNC5(DBusMessageIter *iter_dict,
						  const char *key,
						  const int value_type,
						  const void *value)
{
	DBusMessageIter iter_dict_entry, iter_dict_val;
	const char *type_as_string = NULL;

	if (key == NULL)
		return FALSE;

	type_as_string = FUNC4(value_type);
	if (!type_as_string)
		return FALSE;

	if (!FUNC1(iter_dict, &iter_dict_entry,
					    key, value_type) ||
	    !FUNC3(&iter_dict_entry,
					      DBUS_TYPE_VARIANT,
					      type_as_string, &iter_dict_val) ||
	    !FUNC2(&iter_dict_val, value_type, value))
		return FALSE;

	return FUNC0(iter_dict, &iter_dict_entry,
					    &iter_dict_val);
}
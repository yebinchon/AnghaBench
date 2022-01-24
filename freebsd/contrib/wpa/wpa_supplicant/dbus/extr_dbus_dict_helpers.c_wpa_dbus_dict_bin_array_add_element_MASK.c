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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE_AS_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

dbus_bool_t FUNC3(DBusMessageIter *iter_array,
						const u8 *value,
						size_t value_len)
{
	DBusMessageIter iter_bytes;
	size_t i;

	if (!iter_array || !value ||
	    !FUNC2(iter_array, DBUS_TYPE_ARRAY,
					      DBUS_TYPE_BYTE_AS_STRING,
					      &iter_bytes))
		return FALSE;

	for (i = 0; i < value_len; i++) {
		if (!FUNC0(&iter_bytes,
						    DBUS_TYPE_BYTE,
						    &(value[i])))
			return FALSE;
	}

	return FUNC1(iter_array, &iter_bytes);
}
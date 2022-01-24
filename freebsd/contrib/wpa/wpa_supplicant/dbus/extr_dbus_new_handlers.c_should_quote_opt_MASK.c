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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ ** dont_quote ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static dbus_bool_t FUNC1(const char *key)
{
	int i = 0;

	while (dont_quote[i] != NULL) {
		if (FUNC0(key, dont_quote[i]) == 0)
			return FALSE;
		i++;
	}
	return TRUE;
}
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
typedef  scalar_t__ dbus_bool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (scalar_t__) ; 
 char const FUNC2 (char const) ; 

__attribute__((used)) static char * FUNC3(const char *uscore)
{
	const char *p = uscore;
	char *str, *s;
	dbus_bool_t last_was_uscore = TRUE;

	s = str = FUNC1(FUNC0(uscore) + 1);
	if (!str)
		return NULL;
	while (p && *p) {
		if (*p == '_') {
			last_was_uscore = TRUE;
		} else {
			*s++ = last_was_uscore ? FUNC2(*p) : *p;
			last_was_uscore = FALSE;
		}
		p++;
	}

	return str;
}
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

/* Variables and functions */
 scalar_t__ _POSIX_VDISABLE ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ escape ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ rlogin ; 
 scalar_t__ FUNC2 (char*) ; 

void
FUNC3(char *s)
{
	if (rlogin != _POSIX_VDISABLE) {
		rlogin = (s && *s) ? FUNC2(s) : _POSIX_VDISABLE;
		FUNC1("Telnet rlogin escape character is '%s'.\r\n",
					FUNC0(rlogin));
	} else {
		escape = (s && *s) ? FUNC2(s) : _POSIX_VDISABLE;
		FUNC1("Telnet escape character is '%s'.\r\n", FUNC0(escape));
	}
}
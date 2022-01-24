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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  f_flag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *username, const char *hostname,
	    char *tty, char *ttyn)
{
    /*
     * Update the utmp files, both BSD and SYSV style.
     */
    if (FUNC3(tty, username, hostname) != 0 && !f_flag) {
	FUNC1("No utmpx entry.  You must exec \"login\" from the "
	       "lowest level shell.\n");
	FUNC0(1);
    }
    FUNC2(ttyn, username, hostname);
}
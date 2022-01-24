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
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,char*) ; 

int
FUNC1(login_cap_t *lc, const char * tty)
{
    return FUNC0(lc, tty, "ttys.allow", "ttys.deny");
}
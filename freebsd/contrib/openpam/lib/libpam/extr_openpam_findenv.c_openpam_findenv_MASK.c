#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int env_count; char** env; } ;
typedef  TYPE_1__ pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 

int
FUNC3(pam_handle_t *pamh,
	const char *name,
	size_t len)
{
	int i;

	FUNC0();
	for (i = 0; i < pamh->env_count; ++i)
		if (FUNC2(pamh->env[i], name, len) == 0 &&
		    pamh->env[i][len] == '=')
			FUNC1(i);
	errno = ENOENT;
	FUNC1(-1);
}
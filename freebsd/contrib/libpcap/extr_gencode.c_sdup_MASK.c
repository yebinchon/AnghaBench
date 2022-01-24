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
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(compiler_state_t *cstate, const char *s)
{
	size_t n = FUNC2(s) + 1;
	char *cp = FUNC0(cstate, n);

	FUNC1(cp, s, n);
	return (cp);
}
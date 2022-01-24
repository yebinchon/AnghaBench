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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 char const** timex_states ; 

const char *
FUNC2(
	int s
	)
{
	static char buf[32];

	if ((size_t)s < FUNC0(timex_states))
		return timex_states[s];
	FUNC1(buf, sizeof(buf), "TIME-#%d", s);
	return buf;
}
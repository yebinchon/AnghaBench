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
 int /*<<< orphan*/  CODESET ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 

char *
FUNC1(void)
{
	static char *cs;

	if (cs == NULL)
		cs = FUNC0(CODESET);

	return cs;
}
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
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

char *
FUNC4(char *str)
{
	char *stmp;

	if ((stmp = (char *)FUNC0((unsigned) (FUNC2(str)+1))) == NULL) {
		FUNC3(LOG_ERR, "NewStr: out of memory (%s)", str);
		return(NULL);
	}

	(void) FUNC1(stmp, str);
	return(stmp);
}
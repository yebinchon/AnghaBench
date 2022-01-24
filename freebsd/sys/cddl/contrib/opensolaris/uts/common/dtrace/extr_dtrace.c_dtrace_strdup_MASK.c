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
 int /*<<< orphan*/  KM_SLEEP ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *str)
{
	char *new = FUNC0((str != NULL ? FUNC2(str) : 0) + 1, KM_SLEEP);

	if (str != NULL)
		(void) FUNC1(new, str);

	return (new);
}
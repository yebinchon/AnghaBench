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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char**,char*) ; 

__attribute__((used)) static const char *
FUNC2(char *line, const char *pattern)
{
	char *ptr;

	ptr = FUNC1(&line, " ");
	while (ptr != NULL) {
		if (!FUNC0(ptr, pattern)) {
			/* Return the next. */
			ptr = FUNC1(&line, " ");
			return (ptr);
		}
		ptr = FUNC1(&line, " ");
	}
	return (NULL);
}
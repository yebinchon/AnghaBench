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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(const char *path, char *base)
{
	char *last;

	if (FUNC1(path, base) == NULL)
		return (-1);
	FUNC0("%s -> %s", path, base);
	last = FUNC2(base, '/');
	if (last == NULL)
		return (-1);
	if (last != base)
		*last = '\0';
	return (0);
}
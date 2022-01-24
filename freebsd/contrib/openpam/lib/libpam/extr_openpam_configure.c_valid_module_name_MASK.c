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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESTRICT_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 

__attribute__((used)) static int
FUNC2(const char *name)
{
	const char *p;

	if (FUNC0(RESTRICT_MODULE_NAME)) {
		/* path separator not allowed */
		for (p = name; *p != '\0'; ++p)
			if (!FUNC1(*p))
				return (0);
	} else {
		/* path separator allowed */
		for (p = name; *p != '\0'; ++p)
			if (!FUNC1(*p) && *p != '/')
				return (0);
	}
	return (1);
}
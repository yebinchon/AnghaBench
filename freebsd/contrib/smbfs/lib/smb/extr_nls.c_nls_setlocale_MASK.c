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
 int EINVAL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/ * nls_lower ; 
 int /*<<< orphan*/ * nls_upper ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int
FUNC4(const char *name)
{
	int i;

	if (FUNC0(LC_CTYPE, name) == NULL) {
		FUNC3("can't set locale '%s'\n", name);
		return EINVAL;
	}
	for (i = 0; i < 256; i++) {
		nls_lower[i] = FUNC1(i);
		nls_upper[i] = FUNC2(i);
	}
	return 0;
}
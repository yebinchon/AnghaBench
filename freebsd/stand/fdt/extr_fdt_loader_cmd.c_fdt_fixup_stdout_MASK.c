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
struct fdt_property {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 struct fdt_property* FUNC1 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char***,int) ; 
 int /*<<< orphan*/  fdtp ; 
 scalar_t__ FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

void
FUNC8(const char *str)
{
	char *ptr;
	int len, no, sero;
	const struct fdt_property *prop;
	char *tmp[10];

	ptr = (char *)str + FUNC6(str) - 1;
	while (ptr > str && FUNC4(*(str - 1)))
		str--;

	if (ptr == str)
		return;

	no = FUNC2(fdtp, "/chosen");
	if (no < 0)
		return;

	prop = FUNC1(fdtp, no, "stdout", &len);

	/* If /chosen/stdout does not extist, create it */
	if (prop == NULL || (prop != NULL && len == 0)) {

		FUNC0(tmp, 10 * sizeof(char));
		FUNC5((char *)&tmp, "serial");
		if (FUNC6(ptr) > 3)
			/* Serial number too long */
			return;

		FUNC7((char *)tmp + 6, ptr, 3);
		sero = FUNC2(fdtp, (const char *)tmp);
		if (sero < 0)
			/*
			 * If serial device we're trying to assign
			 * stdout to doesn't exist in DT -- return.
			 */
			return;

		FUNC3(fdtp, no, "stdout", &tmp,
		    FUNC6((char *)&tmp) + 1);
		FUNC3(fdtp, no, "stdin", &tmp,
		    FUNC6((char *)&tmp) + 1);
	}
}
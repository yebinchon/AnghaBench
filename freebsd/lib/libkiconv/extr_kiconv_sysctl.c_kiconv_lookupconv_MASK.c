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
 int ENOENT ; 
 int ENOMEM ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *drvname)
{
	size_t size;

	if (FUNC4("kern.iconv.drvlist", NULL, &size, NULL, 0) == -1)
		return (errno);
	if (size > 0) {
		char *drivers, *drvp;

		drivers = FUNC1(size);
		if (drivers == NULL)
			return (ENOMEM);
		if (FUNC4("kern.iconv.drvlist", drivers, &size, NULL, 0) == -1) {
			FUNC0(drivers);
			return (errno);
		}
		for (drvp = drivers; *drvp != '\0'; drvp += FUNC3(drvp) + 1)
			if (FUNC2(drvp, drvname) == 0) {
				FUNC0(drivers);
				return (0);
			}
	}
	return (ENOENT);
}
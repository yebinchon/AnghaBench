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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**) ; 

int 
FUNC6(device_t dev, const char *hwmod)
{
	phandle_t node;
	int l, len, hwmodlen, result;
	char *name;
	char *buf;

	if ((node = FUNC1(dev)) == 0)
		return (0);

	if ((len = FUNC5(node, (void **)&name)) <= 0)
		return (0);

	buf = name;
	hwmodlen = FUNC2(hwmod);
	result = 0;
	while (len > 0) {
		if (FUNC3(name, hwmod, hwmodlen) == 0) {
                        result = (int)FUNC4(name + hwmodlen, NULL, 10);
			break;
		}
		/* Slide to the next sub-string. */
		l = FUNC2(name) + 1;
		name += l;
		len -= l;
	}

	FUNC0(buf);
	return (result);
}
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
 scalar_t__ FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**) ; 

int FUNC5(device_t dev, const char *hwmod)
{
	phandle_t node;
	int len, l;
	char *name;
	char *buf;
	int result;

	if ((node = FUNC1(dev)) == 0)
		return (0);

	if ((len = FUNC4(node, (void **)&name)) <= 0)
		return (0);

	buf = name;

	result = 0;
	while (len > 0) {
		if (FUNC2(name, hwmod) == 0) {
			result = 1;
			break;
		}

		/* Slide to the next sub-string. */
		l = FUNC3(name) + 1;
		name += l;
		len -= l;
	}

	FUNC0(buf);

	return (result);
}
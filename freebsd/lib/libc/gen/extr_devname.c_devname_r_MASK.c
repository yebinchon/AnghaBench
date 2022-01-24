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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  scalar_t__ dev_t ;
typedef  int /*<<< orphan*/  dev ;

/* Variables and functions */
 scalar_t__ NODEV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*,char*,size_t*,scalar_t__*,int) ; 

char *
FUNC5(dev_t dev, mode_t type, char *buf, int len)
{
	int i;
	size_t j;

	if (dev == NODEV || !(FUNC1(type) || FUNC0(dev))) {
		FUNC3(buf, "#NODEV", len);
		return (buf);
	}

	if (FUNC1(type)) {
		j = len;
		i = FUNC4("kern.devname", buf, &j, &dev, sizeof (dev));
		if (i == 0)
			return (buf);
	}

	/* Finally just format it */
	FUNC2(buf, len, "#%c:%#jx",
	    FUNC1(type) ? 'C' : 'B', (uintmax_t)dev);
	return (buf);
}
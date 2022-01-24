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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  rs_initialized ; 

void
FUNC4(const unsigned char *dat, int datlen)
{
	int j;
	FUNC0();
	if (!rs_initialized)
		FUNC3();
	for (j = 0; j < datlen; j += 256) {
		/* arc4_addrandom() ignores all but the first 256 bytes of
		 * its input.  We want to make sure to look at ALL the
		 * data in 'dat', just in case the user is doing something
		 * crazy like passing us all the files in /var/log. */
		FUNC2(dat + j, datlen - j);
	}
	FUNC1();
}
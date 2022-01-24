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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(unsigned char *buf, size_t len)
{
#ifdef TEST_FUZZ
	size_t i;

	for (i = 0; i < len; i++)
		buf[i] = i & 0xff;
	return 0;
#else /* TEST_FUZZ */
	FILE *f;
	size_t rc;

	if (FUNC0())
		return -1;

	f = FUNC2("/dev/urandom", "rb");
	if (f == NULL) {
		FUNC4("Could not open /dev/urandom.\n");
		return -1;
	}

	rc = FUNC3(buf, 1, len, f);
	FUNC1(f);

	return rc != len ? -1 : 0;
#endif /* TEST_FUZZ */
}
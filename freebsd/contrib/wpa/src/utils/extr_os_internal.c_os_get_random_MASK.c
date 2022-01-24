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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(unsigned char *buf, size_t len)
{
	FILE *f;
	size_t rc;

	f = FUNC1("/dev/urandom", "rb");
	if (f == NULL) {
		FUNC3("Could not open /dev/urandom.\n");
		return -1;
	}

	rc = FUNC2(buf, 1, len, f);
	FUNC0(f);

	return rc != len ? -1 : 0;
}
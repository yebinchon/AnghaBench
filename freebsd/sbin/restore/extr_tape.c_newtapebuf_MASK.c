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
 int TP_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (long) ; 
 long ntrec ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * tapebuf ; 

void
FUNC4(long size)
{
	static int tapebufsize = -1;

	ntrec = size;
	if (size <= tapebufsize)
		return;
	if (tapebuf != NULL)
		FUNC2(tapebuf - TP_BSIZE);
	tapebuf = FUNC3((size+1) * TP_BSIZE);
	if (tapebuf == NULL) {
		FUNC1(stderr, "Cannot allocate space for tape buffer\n");
		FUNC0(1);
	}
	tapebuf += TP_BSIZE;
	tapebufsize = size;
}
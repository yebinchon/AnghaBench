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
 scalar_t__ bytes ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC3(int notused)
{
	int oerrno = errno;

	if (bytes > 0) {
		if (fromatty)
			FUNC2(FUNC0(ttyout), "\n", 1);
		FUNC1(1);
	}
	errno = oerrno;
}
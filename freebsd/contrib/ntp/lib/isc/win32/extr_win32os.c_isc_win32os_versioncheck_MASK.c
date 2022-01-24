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
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 

int
FUNC5(unsigned int major, unsigned int minor,
		     unsigned int spmajor, unsigned int spminor) {

	FUNC0();

	if (major < FUNC1())
		return (1);
	if (major > FUNC1())
		return (-1);
	if (minor < FUNC2())
		return (1);
	if (minor > FUNC2())
		return (-1);
	if (spmajor < FUNC3())
		return (1);
	if (spmajor > FUNC3())
		return (-1);
	if (spminor < FUNC4())
		return (1);
	if (spminor > FUNC4())
		return (-1);

	/* Exact */
	return (0);
}
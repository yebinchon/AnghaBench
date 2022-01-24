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
 int /*<<< orphan*/ * coninex ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ key_pending ; 
 int FUNC2 () ; 

int
FUNC3(void)
{
	int c;

	if ((c = FUNC2()) != 0)
		return (c);

	key_pending = 0;

	if (coninex == NULL) {
		if (FUNC0())
			return (FUNC2());
	} else {
		if (FUNC1())
			return (FUNC2());
	}

	return (-1);
}
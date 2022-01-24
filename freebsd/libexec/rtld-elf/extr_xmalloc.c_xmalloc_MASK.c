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
 int /*<<< orphan*/  STDERR_FILENO ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void *
FUNC3(size_t size)
{

	void *p;

	p = FUNC0(size);
	if (p == NULL) {
		FUNC2(STDERR_FILENO, "Out of memory\n");
		FUNC1(1);
	}
	return (p);
}
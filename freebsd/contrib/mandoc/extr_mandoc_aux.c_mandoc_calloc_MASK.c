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
 scalar_t__ MANDOCLEVEL_SYSERR ; 
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void *
FUNC2(size_t num, size_t size)
{
	void	*ptr;

	ptr = FUNC0(num, size);
	if (ptr == NULL)
		FUNC1((int)MANDOCLEVEL_SYSERR, NULL);
	return ptr;
}
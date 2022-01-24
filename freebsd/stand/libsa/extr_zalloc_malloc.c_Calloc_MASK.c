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
 void* FUNC0 (uintptr_t,char const*,int) ; 
 scalar_t__ MallocCount ; 
 scalar_t__ MallocMax ; 
 int /*<<< orphan*/  FUNC1 (void*,uintptr_t) ; 

void *
FUNC2(size_t n1, size_t n2, const char *file, int line)
{
	uintptr_t bytes = (uintptr_t)n1 * (uintptr_t)n2;
	void *res;

	if ((res = FUNC0(bytes, file, line)) != NULL) {
		FUNC1(res, bytes);
#ifdef DMALLOCDEBUG
		if (++MallocCount > MallocMax)
			MallocMax = MallocCount;
#endif
	}
	return (res);
}
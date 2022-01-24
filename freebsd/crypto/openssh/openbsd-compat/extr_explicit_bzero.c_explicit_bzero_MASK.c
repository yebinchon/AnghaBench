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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

void
FUNC2(void *p, size_t n)
{
	if (n == 0)
		return;
	/*
	 * clang -fsanitize=memory needs to intercept memset-like functions
	 * to correctly detect memory initialisation. Make sure one is called
	 * directly since our indirection trick above successfully confuses it.
	 */
#if defined(__has_feature)
# if __has_feature(memory_sanitizer)
	memset(p, 0, n);
# endif
#endif

	FUNC1(p, n);
}
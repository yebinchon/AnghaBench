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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC4(void *p, size_t s)
{
	void *ptr;

	if(p == NULL) {
		if((ptr=FUNC2(s)) == NULL && (s!=0 || (ptr=FUNC2(1)) == NULL))
			FUNC0("out of memory: xrealloc(%lx, %lu)",
				(unsigned long)p, (unsigned long)s);
	} else if(s == 0) {
		FUNC1(p);
		if((ptr=FUNC2(s)) == NULL && (ptr=FUNC2(1)) == NULL)
			FUNC0("out of memory: xrealloc(%lx, %lu)",
				(unsigned long)p, (unsigned long)s);
	} else {
		if((ptr = FUNC3(p, s)) == NULL)
			FUNC0("out of memory: xrealloc(%lx, %lu)",
				(unsigned long)p, (unsigned long)s);
	}

	return ptr;
}
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (void*,size_t,char*) ; 
 size_t page ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t
FUNC5(void *addr, size_t npgs)
{
	size_t i, resident;
	char *vec;

	vec = FUNC3(npgs);

	FUNC0(vec != NULL);
	FUNC0(FUNC4(addr, npgs * page, vec) == 0);

	for (i = resident = 0; i < npgs; i++) {

		if (vec[i] != 0)
			resident++;

#if 0
		(void)fprintf(stderr, "page 0x%p is %sresident\n",
		    (char *)addr + (i * page), vec[i] ? "" : "not ");
#endif
	}

	FUNC2(vec);

	return resident;
}
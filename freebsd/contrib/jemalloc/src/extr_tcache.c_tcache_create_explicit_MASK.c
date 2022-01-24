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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int stack_nelms ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

tcache_t *
FUNC8(tsd_t *tsd) {
	tcache_t *tcache;
	size_t size, stack_offset;

	size = sizeof(tcache_t);
	/* Naturally align the pointer stacks. */
	size = FUNC0(size);
	stack_offset = size;
	size += stack_nelms * sizeof(void *);
	/* Avoid false cacheline sharing. */
	size = FUNC4(size, CACHELINE);

	tcache = FUNC3(FUNC7(tsd), size, CACHELINE, true, NULL, true,
	    FUNC1(TSDN_NULL, 0, true));
	if (tcache == NULL) {
		return NULL;
	}

	FUNC6(tsd, tcache,
	    (void *)((uintptr_t)tcache + (uintptr_t)stack_offset));
	FUNC5(FUNC7(tsd), tcache, FUNC2(tsd, NULL));

	return tcache;
}
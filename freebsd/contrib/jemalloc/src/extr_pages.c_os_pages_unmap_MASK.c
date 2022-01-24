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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int BUFERROR_BUF ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (void*,size_t) ; 
 scalar_t__ opt_abort ; 
 int /*<<< orphan*/  os_page ; 

__attribute__((used)) static void
FUNC9(void *addr, size_t size) {
	FUNC4(FUNC0(addr, os_page) == addr);
	FUNC4(FUNC1(size, os_page) == size);

#ifdef _WIN32
	if (VirtualFree(addr, 0, MEM_RELEASE) == 0)
#else
	if (FUNC8(addr, size) == -1)
#endif
	{
		char buf[BUFERROR_BUF];

		FUNC5(FUNC6(), buf, sizeof(buf));
		FUNC7("<jemalloc>: Error in "
#ifdef _WIN32
		    "VirtualFree"
#else
		    "munmap"
#endif
		    "(): %s\n", buf);
		if (opt_abort) {
			FUNC3();
		}
	}
}
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
 int /*<<< orphan*/  RTLD_NOLOAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(void)
{
	void *handle;

	handle = FUNC1("libpthread.so", RTLD_NOLOAD);
	if (handle == NULL)
		FUNC2(1, "%s", FUNC0());

	FUNC3("libpthread loaded successfully\n");
	return 0;
}
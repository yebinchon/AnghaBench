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
 int /*<<< orphan*/  FUNC0 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (size_t) ; 

int
FUNC8(void)
{
	void *buffer;
	size_t buflen = 409600;

	buffer = FUNC7(buflen);
	FUNC1(buffer, buflen);
	FUNC0(buffer, "/proc/device-tree",
	    FUNC5(buffer, "/"));
	FUNC2(buffer);

	FUNC4(buffer);

	FUNC3(buffer);
	FUNC6(buffer);
	
	return (0);
}
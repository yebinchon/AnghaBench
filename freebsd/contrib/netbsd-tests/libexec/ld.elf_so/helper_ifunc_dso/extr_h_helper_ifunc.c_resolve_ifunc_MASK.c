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
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static __attribute__((used))
int (*FUNC4(void))(void)
{
	const char *e = FUNC0("USE_IFUNC2");
	return e && FUNC3(e, "1") == 0 ? ifunc2 : ifunc1;
}
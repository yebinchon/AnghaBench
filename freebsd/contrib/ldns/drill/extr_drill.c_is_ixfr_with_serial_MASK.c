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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC3(const char* name, uint32_t *serial)
{
	char* end;
	if (FUNC0(name) > 5 &&
		FUNC1(name, "IXFR", 4) == 0 &&
		name[4] == '=') {
		*serial = (uint32_t) FUNC2((name+5), &end, 10);
		return 1;
	}
	return 0;
}
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
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static phandle_t
FUNC3(phandle_t start)
{
	phandle_t child;
	phandle_t result;

	for (child = FUNC0(start); child != 0; child = FUNC1(child)) {
		if (FUNC2(child, "ti,am335x-lcd"))
			return (child);
		if ((result = FUNC3(child)))
			return (result);
	}

	return (0);
}
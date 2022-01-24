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
typedef  char const* caddr_t ;

/* Variables and functions */
 int FUNC0 (char const*,int const) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static const char*
FUNC3(caddr_t addr, const int offset)
{
	caddr_t		cp;
	int		i, idx;

	idx = FUNC0(addr, offset);
	if (idx != 0) {
		cp = FUNC1(addr);
		for (i = 1; i < idx; i++)
			cp += FUNC2(cp) + 1;
		return cp;
	}
	return (NULL);
}
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
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

__attribute__((used)) static int64_t
FUNC2(void *d, const char *name, int64_t u)
{
	int *mp = d;

	(void)u; /* UNUSED */

	FUNC0(*mp, 0x1234);
	if (FUNC1("FOO", name) == 0)
		return (2);
	return (74);
}
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
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int64_t
FUNC2(void *d, const char *name, int64_t g)
{
	int *mp = d;

	(void)g; /* UNUSED */

	FUNC0(*mp, 0x13579);
	if (FUNC1(name, "FOOGROUP"))
		return (1);
	return (73);
}
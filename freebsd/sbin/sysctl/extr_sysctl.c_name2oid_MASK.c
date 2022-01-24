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
 int CTL_MAXNAME ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int*,int,int*,size_t*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *name, int *oidp)
{
	int oid[2];
	int i;
	size_t j;

	oid[0] = 0;
	oid[1] = 3;

	j = CTL_MAXNAME * sizeof(int);
	i = FUNC1(oid, 2, oidp, &j, name, FUNC0(name));
	if (i < 0)
		return (i);
	j /= sizeof(int);
	return (j);
}
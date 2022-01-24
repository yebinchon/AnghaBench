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
typedef  int /*<<< orphan*/  u_long ;
typedef  int phandle_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char*) ; 

__attribute__((used)) static int
FUNC3(u_long *pbase, u_long *psize)
{
	phandle_t node;
	u_long base = 0;
	u_long size = 0;

	if (pbase == NULL || psize == NULL)
		return (EINVAL);

	if ((node = FUNC0("/")) == -1)
		return (EFAULT);

	if ((node =
	    FUNC2(node, "annapurna-labs,al-cpu-resume")) == 0)
		return (EFAULT);

	if (FUNC1(node, &base, &size))
		return (EFAULT);

	*pbase = base;
	*psize = size;

	return (0);
}
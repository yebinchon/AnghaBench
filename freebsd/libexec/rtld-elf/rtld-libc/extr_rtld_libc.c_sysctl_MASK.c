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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int const CTL_USER ; 
 int FUNC0 (int const*,int /*<<< orphan*/ ,void*,size_t*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(const int *name, u_int namelen, void *oldp, size_t *oldlenp,
    const void *newp, size_t newlen)
{
	int retval;

	FUNC1(name[0] != CTL_USER && "Not supported inside rtld!");
	retval = FUNC0(name, namelen, oldp, oldlenp, newp, newlen);
	return (retval);
}
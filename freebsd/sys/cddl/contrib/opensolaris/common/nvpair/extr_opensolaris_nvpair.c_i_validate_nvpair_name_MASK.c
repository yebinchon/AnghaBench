#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nvp_name_sz; scalar_t__ nvp_size; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int EFAULT ; 
 char* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(nvpair_t *nvp)
{
	if ((nvp->nvp_name_sz <= 0) ||
	    (nvp->nvp_size < FUNC1(nvp->nvp_name_sz, 0)))
		return (EFAULT);

	/* verify the name string, make sure its terminated */
	if (FUNC0(nvp)[nvp->nvp_name_sz - 1] != '\0')
		return (EFAULT);

	return (FUNC2(FUNC0(nvp)) == nvp->nvp_name_sz - 1 ? 0 : EFAULT);
}
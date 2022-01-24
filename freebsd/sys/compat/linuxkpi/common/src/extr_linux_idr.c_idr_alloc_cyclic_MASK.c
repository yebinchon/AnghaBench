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
struct idr {int next_cyclic_id; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct idr*,void*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int
FUNC6(struct idr *idr, void *ptr, int start, int end, gfp_t gfp_mask)
{
	int retval;

	FUNC3(&idr->lock);
	retval = FUNC0(idr, ptr, FUNC2(start, idr->next_cyclic_id), end);
	if (FUNC5(retval == -ENOSPC))
		retval = FUNC0(idr, ptr, start, end);
	if (FUNC1(retval >= 0))
		idr->next_cyclic_id = retval + 1;
	FUNC4(&idr->lock);
	return (retval);
}
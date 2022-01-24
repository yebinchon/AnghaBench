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
struct idr {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct idr*,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct idr *idr, void *ptr, int starting_id, int *idp)
{
	int retval;

	FUNC1(&idr->lock);
	retval = FUNC0(idr, ptr, starting_id, idp);
	FUNC2(&idr->lock);
	return (retval);
}
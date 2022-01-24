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
 void* FUNC0 (struct idr*,int) ; 
 int FUNC1 (struct idr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *
FUNC4(struct idr *idr, int *nextidp)
{
	void *res = NULL;
	int id = *nextidp;

	FUNC2(&idr->lock);
	for (; id <= FUNC1(idr); id++) {
		res = FUNC0(idr, id);
		if (res == NULL)
			continue;
		*nextidp = id;
		break;
	}
	FUNC3(&idr->lock);
	return (res);
}
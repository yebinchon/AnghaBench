#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bufsize; int /*<<< orphan*/  mctx; scalar_t__ magic; struct TYPE_6__* buf; } ;
typedef  TYPE_1__ isc_interfaceiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC4(isc_interfaceiter_t **iterp)
{
	isc_interfaceiter_t *iter;
	FUNC0(iterp != NULL);
	iter = *iterp;
	FUNC0(FUNC1(iter));

	FUNC2(iter);
	if (iter->buf != NULL)
		FUNC3(iter->mctx, iter->buf, iter->bufsize);

	iter->magic = 0;
	FUNC3(iter->mctx, iter, sizeof(*iter));
	*iterp = NULL;
}
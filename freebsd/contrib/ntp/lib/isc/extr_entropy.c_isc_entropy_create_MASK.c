#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_5__ {int refcnt; int /*<<< orphan*/  pool; int /*<<< orphan*/  magic; scalar_t__ initcount; scalar_t__ initialized; int /*<<< orphan*/ * mctx; scalar_t__ nsources; int /*<<< orphan*/ * nextsource; int /*<<< orphan*/  sources; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ isc_entropy_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTROPY_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

isc_result_t
FUNC7(isc_mem_t *mctx, isc_entropy_t **entp) {
	isc_result_t result;
	isc_entropy_t *ent;

	FUNC1(mctx != NULL);
	FUNC1(entp != NULL && *entp == NULL);

	ent = FUNC4(mctx, sizeof(isc_entropy_t));
	if (ent == NULL)
		return (ISC_R_NOMEMORY);

	/*
	 * We need a lock.
	 */
	result = FUNC6(&ent->lock);
	if (result != ISC_R_SUCCESS)
		goto errout;

	/*
	 * From here down, no failures will/can occur.
	 */
	FUNC0(ent->sources);
	ent->nextsource = NULL;
	ent->nsources = 0;
	ent->mctx = NULL;
	FUNC3(mctx, &ent->mctx);
	ent->refcnt = 1;
	ent->initialized = 0;
	ent->initcount = 0;
	ent->magic = ENTROPY_MAGIC;

	FUNC2(&ent->pool);

	*entp = ent;
	return (ISC_R_SUCCESS);

 errout:
	FUNC5(mctx, ent, sizeof(isc_entropy_t));

	return (result);
}
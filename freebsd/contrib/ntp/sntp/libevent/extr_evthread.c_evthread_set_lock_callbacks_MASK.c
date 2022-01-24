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
struct evthread_lock_callbacks {scalar_t__ alloc; scalar_t__ lock_api_version; scalar_t__ supported_locktypes; scalar_t__ free; scalar_t__ lock; scalar_t__ unlock; } ;
typedef  int /*<<< orphan*/  evthread_lock_fns_ ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct evthread_lock_callbacks* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evthread_lock_callbacks*,struct evthread_lock_callbacks const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evthread_lock_callbacks*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(const struct evthread_lock_callbacks *cbs)
{
	struct evthread_lock_callbacks *target = FUNC2();

	if (!cbs) {
		if (target->alloc)
			FUNC1("Trying to disable lock functions after "
			    "they have been set up will probaby not work.");
		FUNC4(target, 0, sizeof(evthread_lock_fns_));
		return 0;
	}
	if (target->alloc) {
		/* Uh oh; we already had locking callbacks set up.*/
		if (target->lock_api_version == cbs->lock_api_version &&
			target->supported_locktypes == cbs->supported_locktypes &&
			target->alloc == cbs->alloc &&
			target->free == cbs->free &&
			target->lock == cbs->lock &&
			target->unlock == cbs->unlock) {
			/* no change -- allow this. */
			return 0;
		}
		FUNC1("Can't change lock callbacks once they have been "
		    "initialized.");
		return -1;
	}
	if (cbs->alloc && cbs->free && cbs->lock && cbs->unlock) {
		FUNC3(target, cbs, sizeof(evthread_lock_fns_));
		return FUNC0(1);
	} else {
		return -1;
	}
}
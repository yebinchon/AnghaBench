#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct rrset_ref {TYPE_2__* key; void* id; } ;
struct alloc_cache {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ entry; void* id; } ;

/* Variables and functions */
 void* FUNC0 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct rrset_ref* ref, struct alloc_cache* alloc)
{
	/* this may clear the cache and invalidate lock below */
	uint64_t newid = FUNC0(alloc);
	/* obtain writelock */
	FUNC2(&ref->key->entry.lock);
	/* check if it was deleted in the meantime, if so, skip update */
	if(ref->key->id == ref->id) {
		ref->key->id = newid;
		ref->id = newid;
	}
	FUNC1(&ref->key->entry.lock);
}
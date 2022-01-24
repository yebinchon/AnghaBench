#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ hash; int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {scalar_t__ id; TYPE_1__ entry; } ;
struct rrset_cache {int /*<<< orphan*/  table; } ;
struct lruhash {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ rrset_id_type ;
typedef  scalar_t__ hashvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lruhash*,TYPE_1__*) ; 
 struct lruhash* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

void 
FUNC6(struct rrset_cache* r, struct ub_packed_rrset_key* key,
        hashvalue_type hash, rrset_id_type id)
{
	struct lruhash* table = FUNC5(&r->table, hash);
	/* 
	 * This leads to locking problems, deadlocks, if the caller is 
	 * holding any other rrset lock.
	 * Because a lookup through the hashtable does:
	 *	tablelock -> entrylock  (for that entry caller holds)
	 * And this would do
	 *	entrylock(already held) -> tablelock
	 * And if two threads do this, it results in deadlock.
	 * So, the caller must not hold entrylock.
	 */
	FUNC0(&table->lock);
	/* we have locked the hash table, the item can still be deleted.
	 * because it could already have been reclaimed, but not yet set id=0.
	 * This is because some lruhash routines have lazy deletion.
	 * so, we must acquire a lock on the item to verify the id != 0.
	 * also, with hash not changed, we are using the right slab.
	 */
	FUNC2(&key->entry.lock);
	if(key->id == id && key->entry.hash == hash) {
		FUNC4(table, &key->entry);
	}
	FUNC3(&key->entry.lock);
	FUNC1(&table->lock);
}
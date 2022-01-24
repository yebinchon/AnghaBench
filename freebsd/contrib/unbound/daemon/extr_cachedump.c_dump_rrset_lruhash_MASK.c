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
typedef  int /*<<< orphan*/  time_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; scalar_t__ data; scalar_t__ key; struct lruhash_entry* lru_next; } ;
struct lruhash {struct lruhash_entry* lru_start; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ub_packed_rrset_key*,struct packed_rrset_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(RES* ssl, struct lruhash* h, time_t now)
{
	struct lruhash_entry* e;
	/* lruhash already locked by caller */
	/* walk in order of lru; best first */
	for(e=h->lru_start; e; e = e->lru_next) {
		FUNC1(&e->lock);
		if(!FUNC0(ssl, (struct ub_packed_rrset_key*)e->key,
			(struct packed_rrset_data*)e->data, now)) {
			FUNC2(&e->lock);
			return 0;
		}
		FUNC2(&e->lock);
	}
	return 1;
}
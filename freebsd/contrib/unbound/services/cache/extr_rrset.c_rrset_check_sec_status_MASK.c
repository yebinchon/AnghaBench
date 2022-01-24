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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {int /*<<< orphan*/  hash; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; int /*<<< orphan*/  rk; } ;
struct rrset_cache {int /*<<< orphan*/  table; } ;
struct packed_rrset_data {scalar_t__ ttl; scalar_t__ security; size_t count; size_t rrsig_count; scalar_t__* rr_ttl; scalar_t__ trust; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_rrset_data*,struct packed_rrset_data*) ; 
 scalar_t__ sec_status_bogus ; 
 struct lruhash_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 

void 
FUNC4(struct rrset_cache* r, 
	struct ub_packed_rrset_key* rrset, time_t now)
{
	struct packed_rrset_data* updata = 
		(struct packed_rrset_data*)rrset->entry.data;
	struct lruhash_entry* e;
	struct packed_rrset_data* cachedata;

	/* hash it again to make sure it has a hash */
	rrset->entry.hash = FUNC1(&rrset->rk);

	e = FUNC3(&r->table, rrset->entry.hash, rrset, 0);
	if(!e)
		return; /* not in the cache anymore */
	cachedata = (struct packed_rrset_data*)e->data;
	if(now > cachedata->ttl || !FUNC2(updata, cachedata)) {
		FUNC0(&e->lock);
		return; /* expired, or rrset has changed in the meantime */
	}
	if(cachedata->security > updata->security) {
		updata->security = cachedata->security;
		if(cachedata->security == sec_status_bogus) {
			size_t i;
			updata->ttl = cachedata->ttl - now;
			for(i=0; i<cachedata->count+cachedata->rrsig_count; i++)
				if(cachedata->rr_ttl[i] < now)
					updata->rr_ttl[i] = 0;
				else updata->rr_ttl[i] = 
					cachedata->rr_ttl[i]-now;
		}
		if(cachedata->trust > updata->trust)
			updata->trust = cachedata->trust;
	}
	FUNC0(&e->lock);
}
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
typedef  scalar_t__ time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; int /*<<< orphan*/  hash; } ;
struct TYPE_3__ {size_t dname_len; struct packed_rrset_data* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int /*<<< orphan*/  id; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; scalar_t__* rr_ttl; scalar_t__ ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_rrset_data*) ; 
 size_t FUNC2 (struct packed_rrset_data*) ; 
 struct ub_packed_rrset_key* FUNC3 (struct regional*,int) ; 
 struct packed_rrset_data* FUNC4 (struct regional*,struct packed_rrset_data*,size_t) ; 

struct ub_packed_rrset_key*
FUNC5(struct ub_packed_rrset_key* key, 
	struct regional* region, time_t now)
{
	struct ub_packed_rrset_key* ck = FUNC3(region, 
		sizeof(struct ub_packed_rrset_key));
	struct packed_rrset_data* d;
	struct packed_rrset_data* data = (struct packed_rrset_data*)
		key->entry.data;
	size_t dsize, i;
	if(!ck)
		return NULL;
	ck->id = key->id;
	FUNC0(&ck->entry, 0, sizeof(ck->entry));
	ck->entry.hash = key->entry.hash;
	ck->entry.key = ck;
	ck->rk = key->rk;
	ck->rk.dname = FUNC4(region, key->rk.dname, 
		key->rk.dname_len);
	if(!ck->rk.dname)
		return NULL;
	dsize = FUNC2(data);
	d = (struct packed_rrset_data*)FUNC4(region, data, dsize);
	if(!d)
		return NULL;
	ck->entry.data = d;
	FUNC1(d);
	/* make TTLs relative - once per rrset */
	for(i=0; i<d->count + d->rrsig_count; i++) {
		if(d->rr_ttl[i] < now)
			d->rr_ttl[i] = 0;
		else	d->rr_ttl[i] -= now;
	}
	if(d->ttl < now)
		d->ttl = 0;
	else	d->ttl -= now;
	return ck;
}
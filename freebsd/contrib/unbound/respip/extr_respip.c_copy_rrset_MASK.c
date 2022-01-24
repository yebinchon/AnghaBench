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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; int /*<<< orphan*/  hash; } ;
struct TYPE_3__ {int /*<<< orphan*/  dname; int /*<<< orphan*/  dname_len; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int /*<<< orphan*/  id; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int count; size_t* rr_len; int /*<<< orphan*/ ** rr_data; scalar_t__* rr_ttl; scalar_t__ rrsig_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct regional*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ub_packed_rrset_key*
FUNC4(const struct ub_packed_rrset_key* key, struct regional* region)
{
	struct ub_packed_rrset_key* ck = FUNC2(region,
		sizeof(struct ub_packed_rrset_key));
	struct packed_rrset_data* d;
	struct packed_rrset_data* data = key->entry.data;
	size_t dsize, i;
	uint8_t* nextrdata;

	/* derived from packed_rrset_copy_region(), but don't use
	 * packed_rrset_sizeof() and do exclude RRSIGs */
	if(!ck)
		return NULL;
	ck->id = key->id;
	FUNC1(&ck->entry, 0, sizeof(ck->entry));
	ck->entry.hash = key->entry.hash;
	ck->entry.key = ck;
	ck->rk = key->rk;
	ck->rk.dname = FUNC3(region, key->rk.dname,
		key->rk.dname_len);
	if(!ck->rk.dname)
		return NULL;

	dsize = sizeof(struct packed_rrset_data) + data->count *
		(sizeof(size_t)+sizeof(uint8_t*)+sizeof(time_t));
	for(i=0; i<data->count; i++)
		dsize += data->rr_len[i];
	d = FUNC2(region, dsize);
	if(!d)
		return NULL;
	*d = *data;
	d->rrsig_count = 0;
	ck->entry.data = d;

	/* derived from packed_rrset_ptr_fixup() with copying the data */
	d->rr_len = (size_t*)((uint8_t*)d + sizeof(struct packed_rrset_data));
	d->rr_data = (uint8_t**)&(d->rr_len[d->count]);
	d->rr_ttl = (time_t*)&(d->rr_data[d->count]);
	nextrdata = (uint8_t*)&(d->rr_ttl[d->count]);
	for(i=0; i<d->count; i++) {
		d->rr_len[i] = data->rr_len[i];
		d->rr_ttl[i] = data->rr_ttl[i];
		d->rr_data[i] = nextrdata;
		FUNC0(d->rr_data[i], data->rr_data[i], data->rr_len[i]);
		nextrdata += d->rr_len[i];
	}

	return ck;
}
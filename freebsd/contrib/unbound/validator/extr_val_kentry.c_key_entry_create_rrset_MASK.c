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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct key_entry_key {int dummy; } ;
struct key_entry_data {struct packed_rrset_data* rrset_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  rrset_type; int /*<<< orphan*/ * reason; scalar_t__ isbad; scalar_t__ ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regional*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct key_entry_key**,struct key_entry_data**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_rrset_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_rrset_data*) ; 
 scalar_t__ FUNC4 (struct regional*,struct packed_rrset_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct regional*,char*) ; 

struct key_entry_key* 
FUNC6(struct regional* region,
	uint8_t* name, size_t namelen, uint16_t dclass,
	struct ub_packed_rrset_key* rrset, uint8_t* sigalg, time_t now)
{
	struct key_entry_key* k;
	struct key_entry_data* d;
	struct packed_rrset_data* rd = (struct packed_rrset_data*)
		rrset->entry.data;
	if(!FUNC0(region, name, namelen, dclass, &k, &d))
		return NULL;
	d->ttl = rd->ttl + now;
	d->isbad = 0;
	d->reason = NULL;
	d->rrset_type = FUNC1(rrset->rk.type);
	d->rrset_data = (struct packed_rrset_data*)FUNC4(region,
		rd, FUNC3(rd));
	if(!d->rrset_data)
		return NULL;
	if(sigalg) {
		d->algo = (uint8_t*)FUNC5(region, (char*)sigalg);
		if(!d->algo)
			return NULL;
	} else d->algo = NULL;
	FUNC2(d->rrset_data);
	return k;
}
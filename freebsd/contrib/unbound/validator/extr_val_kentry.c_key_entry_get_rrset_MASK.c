#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; } ;
struct TYPE_5__ {void* rrset_class; void* type; int /*<<< orphan*/  dname_len; void* dname; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct key_entry_key {int /*<<< orphan*/  key_class; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; TYPE_1__ entry; } ;
struct key_entry_data {int /*<<< orphan*/  rrset_data; int /*<<< orphan*/  rrset_type; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_rrset_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC4 (struct regional*,int) ; 
 void* FUNC5 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ub_packed_rrset_key* 
FUNC6(struct key_entry_key* kkey, struct regional* region)
{
	struct key_entry_data* d = (struct key_entry_data*)kkey->entry.data;
	struct ub_packed_rrset_key* rrk;
	struct packed_rrset_data* rrd;
	if(!d || !d->rrset_data)
		return NULL;
	rrk = FUNC4(region, sizeof(*rrk));
	if(!rrk)
		return NULL;
	FUNC1(rrk, 0, sizeof(*rrk));
	rrk->rk.dname = FUNC5(region, kkey->name, kkey->namelen);
	if(!rrk->rk.dname)
		return NULL;
	rrk->rk.dname_len = kkey->namelen;
	rrk->rk.type = FUNC0(d->rrset_type);
	rrk->rk.rrset_class = FUNC0(kkey->key_class);
	rrk->entry.key = rrk;
	rrd = FUNC5(region, d->rrset_data, 
		FUNC3(d->rrset_data));
	if(!rrd)
		return NULL;
	rrk->entry.data = rrd;
	FUNC2(rrd);
	return rrk;
}
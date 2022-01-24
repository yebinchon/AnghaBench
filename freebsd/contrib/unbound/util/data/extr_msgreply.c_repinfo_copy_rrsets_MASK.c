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
struct packed_rrset_data {int dummy; } ;
typedef  struct packed_rrset_data uint8_t ;
struct TYPE_4__ {void* data; int /*<<< orphan*/  hash; } ;
struct TYPE_3__ {size_t dname_len; struct packed_rrset_data* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int /*<<< orphan*/  id; } ;
struct reply_info {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct packed_rrset_data*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_rrset_data*) ; 
 size_t FUNC2 (struct packed_rrset_data*) ; 
 scalar_t__ FUNC3 (struct regional*,struct packed_rrset_data*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct reply_info* dest, struct reply_info* from, 
	struct regional* region)
{
	size_t i, s;
	struct packed_rrset_data* fd, *dd;
	struct ub_packed_rrset_key* fk, *dk;
	for(i=0; i<dest->rrset_count; i++) {
		fk = from->rrsets[i];
		dk = dest->rrsets[i];
		fd = (struct packed_rrset_data*)fk->entry.data;
		dk->entry.hash = fk->entry.hash;
		dk->rk = fk->rk;
		if(region) {
			dk->id = fk->id;
			dk->rk.dname = (uint8_t*)FUNC3(region,
				fk->rk.dname, fk->rk.dname_len);
		} else	
			dk->rk.dname = (uint8_t*)FUNC0(fk->rk.dname, 
				fk->rk.dname_len);
		if(!dk->rk.dname)
			return 0;
		s = FUNC2(fd);
		if(region)
			dd = (struct packed_rrset_data*)FUNC3(
				region, fd, s);
		else	dd = (struct packed_rrset_data*)FUNC0(fd, s);
		if(!dd) 
			return 0;
		FUNC1(dd);
		dk->entry.data = (void*)dd;
	}
	return 1;
}
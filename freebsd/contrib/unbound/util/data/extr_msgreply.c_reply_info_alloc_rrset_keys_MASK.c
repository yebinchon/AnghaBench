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
struct TYPE_2__ {int /*<<< orphan*/ * data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct reply_info {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct alloc_cache {int dummy; } ;

/* Variables and functions */
 struct ub_packed_rrset_key* FUNC0 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct regional*,int) ; 

int
FUNC3(struct reply_info* rep, struct alloc_cache* alloc,
	struct regional* region)
{
	size_t i;
	for(i=0; i<rep->rrset_count; i++) {
		if(region) {
			rep->rrsets[i] = (struct ub_packed_rrset_key*)
				FUNC2(region, 
				sizeof(struct ub_packed_rrset_key));
			if(rep->rrsets[i]) {
				FUNC1(rep->rrsets[i], 0, 
					sizeof(struct ub_packed_rrset_key));
				rep->rrsets[i]->entry.key = rep->rrsets[i];
			}
		}
		else	rep->rrsets[i] = FUNC0(alloc);
		if(!rep->rrsets[i])
			return 0;
		rep->rrsets[i]->entry.data = NULL;
	}
	return 1;
}
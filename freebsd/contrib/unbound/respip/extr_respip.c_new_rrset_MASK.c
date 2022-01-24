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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int dname_len; void* rrset_class; void* type; void* dname; } ;
struct TYPE_3__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int /*<<< orphan*/  security; int /*<<< orphan*/  trust; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (struct regional*,int) ; 
 int /*<<< orphan*/  rrset_trust_prim_noglue ; 
 int /*<<< orphan*/  sec_status_insecure ; 

__attribute__((used)) static struct ub_packed_rrset_key*
FUNC3(struct regional* region, uint16_t rrtype, uint16_t rrclass)
{
	struct packed_rrset_data* pd;
	struct ub_packed_rrset_key* rrset = FUNC2(
		region, sizeof(*rrset));
	if(!rrset) {
		FUNC1("out of memory");
		return NULL;
	}
	rrset->entry.key = rrset;
	pd = FUNC2(region, sizeof(*pd));
	if(!pd) {
		FUNC1("out of memory");
		return NULL;
	}
	pd->trust = rrset_trust_prim_noglue;
	pd->security = sec_status_insecure;
	rrset->entry.data = pd;
	rrset->rk.dname = FUNC2(region, 1);
	if(!rrset->rk.dname) {
		FUNC1("out of memory");
		return NULL;
	}
	rrset->rk.dname_len = 1;
	rrset->rk.type = FUNC0(rrtype);
	rrset->rk.rrset_class = FUNC0(rrclass);
	return rrset;
}
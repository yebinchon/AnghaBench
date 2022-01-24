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
struct TYPE_3__ {scalar_t__ type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ qtype; TYPE_2__* local_alias; } ;
struct local_rrset {int dummy; } ;
struct config_strlist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rrset; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct query_info*,struct config_strlist*,struct ub_packed_rrset_key*,struct regional*) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*,struct ub_packed_rrset_key*,int) ; 
 TYPE_2__* FUNC3 (struct regional*,int) ; 

__attribute__((used)) static int
FUNC4(struct query_info* qinfo, struct config_strlist* list,
	struct ub_packed_rrset_key* r, struct regional* temp)
{
	int result = FUNC1(qinfo, list, r, temp);

	/* If we've found a non-exact alias type of local data, make a shallow
	 * copy of the RRset and remember it in qinfo to complete the alias
	 * chain later. */
	if(result && qinfo->qtype != LDNS_RR_TYPE_CNAME &&
		r->rk.type == FUNC0(LDNS_RR_TYPE_CNAME)) {
		qinfo->local_alias =
			FUNC3(temp, sizeof(struct local_rrset));
		if(!qinfo->local_alias)
			return 0; /* out of memory */
		qinfo->local_alias->rrset =
			FUNC2(temp, r, sizeof(*r));
		if(!qinfo->local_alias->rrset)
			return 0; /* out of memory */
	}
	return result;
}
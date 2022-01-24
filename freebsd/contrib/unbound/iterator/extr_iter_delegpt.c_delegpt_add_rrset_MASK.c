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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int FUNC0 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int 
FUNC5(struct delegpt* dp, struct regional* region,
        struct ub_packed_rrset_key* rrset, uint8_t lame)
{
	if(!rrset)
		return 1;
	if(FUNC4(rrset->rk.type) == LDNS_RR_TYPE_NS)
		return FUNC2(dp, region, rrset, lame);
	else if(FUNC4(rrset->rk.type) == LDNS_RR_TYPE_A)
		return FUNC0(dp, region, rrset, lame);
	else if(FUNC4(rrset->rk.type) == LDNS_RR_TYPE_AAAA)
		return FUNC1(dp, region, rrset, lame);
	FUNC3("Unknown rrset type added to delegpt");
	return 1;
}
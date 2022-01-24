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
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ security; size_t count; int* rr_len; scalar_t__* rr_data; } ;
struct delegpt {int bogus; int /*<<< orphan*/  dp_type_mlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*,struct regional*,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ sec_status_bogus ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int 
FUNC4(struct delegpt* dp, struct regional* region,
        struct ub_packed_rrset_key* ns_rrset, uint8_t lame)
{
	struct packed_rrset_data* nsdata = (struct packed_rrset_data*)
		ns_rrset->entry.data;
	size_t i;
	FUNC2(!dp->dp_type_mlc);
	if(nsdata->security == sec_status_bogus)
		dp->bogus = 1;
	for(i=0; i<nsdata->count; i++) {
		if(nsdata->rr_len[i] < 2+1) continue; /* len + root label */
		if(FUNC1(nsdata->rr_data[i]+2, nsdata->rr_len[i]-2) !=
			(size_t)FUNC3(nsdata->rr_data[i]))
			continue; /* bad format */
		/* add rdata of NS (= wirefmt dname), skip rdatalen bytes */
		if(!FUNC0(dp, region, nsdata->rr_data[i]+2, lame))
			return 0;
	}
	return 1;
}
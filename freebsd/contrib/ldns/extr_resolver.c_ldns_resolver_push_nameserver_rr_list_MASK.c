#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC3(ldns_resolver *r, const ldns_rr_list *rrlist)
{
	ldns_rr *rr;
	ldns_status stat;
	size_t i;

	stat = LDNS_STATUS_OK;
	if (rrlist) {
		for(i = 0; i < FUNC2(rrlist); i++) {
			rr = FUNC1(rrlist, i);
			if (FUNC0(r, rr) != LDNS_STATUS_OK) {
				stat = LDNS_STATUS_ERR;
				break;
			}
		}
		return stat;
	} else {
		return LDNS_STATUS_ERR;
	}
}
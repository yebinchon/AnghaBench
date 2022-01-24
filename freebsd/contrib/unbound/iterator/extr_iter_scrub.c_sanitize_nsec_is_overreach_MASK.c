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
typedef  int /*<<< orphan*/  uint8_t ;
struct rrset_parse {scalar_t__ type; struct rr_parse* rr_first; } ;
struct rr_parse {int /*<<< orphan*/ * ttl_data; struct rr_parse* next; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rrset_parse* rrset, 
	uint8_t* zonename)
{
	struct rr_parse* rr;
	uint8_t* rhs;
	size_t len;
	FUNC2(rrset->type == LDNS_RR_TYPE_NSEC);
	for(rr = rrset->rr_first; rr; rr = rr->next) {
		rhs = rr->ttl_data+4+2;
		len = FUNC3(rr->ttl_data+4);
		if(!FUNC1(rhs, len)) {
			/* malformed domain name in rdata */
			return 1;
		}
		if(!FUNC0(rhs, zonename)) {
			/* overreaching */
			return 1;
		}
	}
	/* all NSEC RRs OK */
	return 0;
}
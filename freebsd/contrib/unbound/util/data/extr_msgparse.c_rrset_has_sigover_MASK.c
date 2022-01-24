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
typedef  int /*<<< orphan*/  uint16_t ;
struct rrset_parse {scalar_t__ type; struct rr_parse* rr_first; } ;
struct rr_parse {struct rr_parse* next; int /*<<< orphan*/  ttl_data; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(sldns_buffer* pkt, struct rrset_parse* rrset, uint16_t type,
	int* hasother)
{
	int res = 0;
	struct rr_parse* rr = rrset->rr_first;
	FUNC0( rrset->type == LDNS_RR_TYPE_RRSIG );
	while(rr) {
		if(FUNC1(pkt, rr->ttl_data, type))
			res = 1;
		else	*hasother = 1;
		rr = rr->next;
	}
	return res;
}
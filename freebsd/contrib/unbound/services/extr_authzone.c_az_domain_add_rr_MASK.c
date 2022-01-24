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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct auth_rrset {int /*<<< orphan*/  data; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 struct auth_rrset* FUNC0 (struct auth_data*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_rrset*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int) ; 
 struct auth_rrset* FUNC3 (struct auth_data*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_data*,scalar_t__,struct auth_rrset*,struct auth_rrset*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC6(struct auth_data* node, uint16_t rr_type, uint32_t rr_ttl,
	uint8_t* rdata, size_t rdatalen, int* duplicate)
{
	struct auth_rrset* rrset;
	/* packed rrsets have their rrsigs along with them, sort them out */
	if(rr_type == LDNS_RR_TYPE_RRSIG) {
		uint16_t ctype = FUNC5(rdata, rdatalen);
		if((rrset=FUNC0(node, ctype))!= NULL) {
			/* a node of the correct type exists, add the RRSIG
			 * to the rrset of the covered data type */
			if(FUNC1(rrset->data, rdata, rdatalen)) {
				if(duplicate) *duplicate = 1;
				return 1;
			}
			if(!FUNC2(rrset, rr_ttl, rdata, rdatalen, 1))
				return 0;
		} else if((rrset=FUNC0(node, rr_type))!= NULL) {
			/* add RRSIG to rrset of type RRSIG */
			if(FUNC1(rrset->data, rdata, rdatalen)) {
				if(duplicate) *duplicate = 1;
				return 1;
			}
			if(!FUNC2(rrset, rr_ttl, rdata, rdatalen, 0))
				return 0;
		} else {
			/* create rrset of type RRSIG */
			if(!FUNC3(node, rr_type, rr_ttl, rdata,
				rdatalen))
				return 0;
		}
	} else {
		/* normal RR type */
		if((rrset=FUNC0(node, rr_type))!= NULL) {
			/* add data to existing node with data type */
			if(FUNC1(rrset->data, rdata, rdatalen)) {
				if(duplicate) *duplicate = 1;
				return 1;
			}
			if(!FUNC2(rrset, rr_ttl, rdata, rdatalen, 0))
				return 0;
		} else {
			struct auth_rrset* rrsig;
			/* create new node with data type */
			if(!(rrset=FUNC3(node, rr_type, rr_ttl, rdata,
				rdatalen)))
				return 0;

			/* see if node of type RRSIG has signatures that
			 * cover the data type, and move them over */
			/* and then make the RRSIG type smaller */
			if((rrsig=FUNC0(node, LDNS_RR_TYPE_RRSIG))
				!= NULL) {
				if(!FUNC4(node, rr_type,
					rrset, rrsig))
					return 0;
			}
		}
	}
	return 1;
}
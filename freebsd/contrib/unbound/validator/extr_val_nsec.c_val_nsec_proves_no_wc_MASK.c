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
typedef  int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int**,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,size_t) ; 
 int* FUNC3 (int*,struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,int*) ; 

int 
FUNC5(struct ub_packed_rrset_key* nsec, uint8_t* qname, 
	size_t qnamelen)
{
	/* Determine if a NSEC record proves the non-existence of a 
	 * wildcard that could have produced qname. */
	int labs;
	uint8_t* ce = FUNC3(qname, nsec);
	uint8_t* strip;
	size_t striplen;
	uint8_t buf[LDNS_MAX_DOMAINLEN+3];
	if(!ce)
		return 0;
	/* we can subtract the closest encloser count - since that is the
	 * largest shared topdomain with owner and next NSEC name,
	 * because the NSEC is no proof for names shorter than the owner 
	 * and next names. */
	labs = FUNC0(qname) - FUNC0(ce);

	if(labs > 0) {
		/* i is number of labels to strip off qname, prepend * wild */
		strip = qname;
		striplen = qnamelen;
		FUNC1(&strip, &striplen, labs);
		if(striplen > LDNS_MAX_DOMAINLEN-2)
			return 0; /* too long to prepend wildcard */
		buf[0] = 1;
		buf[1] = (uint8_t)'*';
		FUNC2(buf+2, strip, striplen);
		if(FUNC4(nsec, buf)) {
			return 1;
		}
	}
	return 0;
}
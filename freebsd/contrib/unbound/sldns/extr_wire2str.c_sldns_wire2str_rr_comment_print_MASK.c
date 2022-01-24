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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *,size_t,size_t) ; 

int FUNC3(char** s, size_t* slen, uint8_t* rr,
	size_t rrlen, size_t dname_off, uint16_t rrtype)
{
	if(rrtype == LDNS_RR_TYPE_DNSKEY) {
		return FUNC0(s, slen, rr, rrlen, dname_off);
	} else if(rrtype == LDNS_RR_TYPE_RRSIG) {
		return FUNC2(s, slen, rr, rrlen, dname_off);
	} else if(rrtype == LDNS_RR_TYPE_NSEC3) {
		return FUNC1(s, slen, rr, rrlen, dname_off);
	}
	return 0;
}
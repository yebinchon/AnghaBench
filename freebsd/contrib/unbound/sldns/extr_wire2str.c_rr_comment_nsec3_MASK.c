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

/* Variables and functions */
 int LDNS_NSEC3_VARS_OPTOUT_MASK ; 
 size_t FUNC0 (int*) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*) ; 

__attribute__((used)) static int FUNC2(char** s, size_t* slen, uint8_t* rr,
	size_t rrlen, size_t dname_off)
{
	size_t rdlen;
	uint8_t* rdata;
	int w = 0;
	if(rrlen < dname_off + 10) return 0;
	rdlen = FUNC0(rr+dname_off+8);
	if(rrlen < dname_off + 10 + rdlen) return 0;
	rdata = rr + dname_off + 10;
	if(rdlen < 2) return 0;
	if((rdata[1] & LDNS_NSEC3_VARS_OPTOUT_MASK))
		w += FUNC1(s, slen, " ;{flags: optout}");
	return w;
}
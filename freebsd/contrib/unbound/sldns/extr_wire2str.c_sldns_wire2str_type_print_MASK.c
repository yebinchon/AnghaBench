#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {unsigned int _name; } ;
typedef  TYPE_1__ sldns_rr_descriptor ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int FUNC1 (char**,size_t*,char*,unsigned int) ; 

int FUNC2(char** s, size_t* slen, uint16_t rrtype)
{
	const sldns_rr_descriptor *descriptor = FUNC0(rrtype);
	if (descriptor && descriptor->_name) {
		return FUNC1(s, slen, "%s", descriptor->_name);
	}
	return FUNC1(s, slen, "TYPE%u", (unsigned)rrtype);
}
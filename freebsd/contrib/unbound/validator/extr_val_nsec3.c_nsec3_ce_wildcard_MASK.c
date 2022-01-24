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
struct regional {int dummy; } ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,size_t) ; 
 scalar_t__ FUNC2 (struct regional*,size_t) ; 

__attribute__((used)) static uint8_t*
FUNC3(struct regional* region, uint8_t* ce, size_t celen,
	size_t* len)
{
	uint8_t* nm;
	if(celen > LDNS_MAX_DOMAINLEN - 2)
		return 0; /* too long */
	nm = (uint8_t*)FUNC2(region, celen+2);
	if(!nm) {
		FUNC0("nsec3 wildcard: out of memory");
		return 0; /* alloc failure */
	}
	nm[0] = 1;
	nm[1] = (uint8_t)'*'; /* wildcard label */
	FUNC1(nm+2, ce, celen);
	*len = celen+2;
	return nm;
}
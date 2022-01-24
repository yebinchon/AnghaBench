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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct rr_parse {scalar_t__ ttl_data; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static time_t
FUNC2(struct rr_parse* rr)
{
	uint16_t rlen = FUNC0(rr->ttl_data+4);
	if(rlen < 20)
		return 0; /* rdata too small for SOA (dname, dname, 5*32bit) */
	/* minimum TTL is the last 32bit value in the rdata of the record */
	/* at position ttl_data + 4(ttl) + 2(rdatalen) + rdatalen - 4(timeval)*/
	return (time_t)FUNC1(rr->ttl_data+6+rlen-4);
}
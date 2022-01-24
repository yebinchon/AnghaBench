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
typedef  int /*<<< orphan*/ * time_t ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t* rr_len; int count; int /*<<< orphan*/ ** rr_data; int /*<<< orphan*/ ** rr_ttl; } ;

/* Variables and functions */
 int LOCALZONE_RRSET_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,int) ; 
 void* FUNC3 (struct regional*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct regional*,int /*<<< orphan*/ *,size_t) ; 

int
FUNC5(struct regional* region, struct packed_rrset_data* pd,
	uint8_t* rdata, size_t rdata_len, time_t ttl, const char* rrstr)
{
	size_t* oldlen = pd->rr_len;
	time_t* oldttl = pd->rr_ttl;
	uint8_t** olddata = pd->rr_data;

	/* add RR to rrset */
	if(pd->count > LOCALZONE_RRSET_COUNT_MAX) {
		FUNC1("RRset '%s' has more than %d records, record ignored",
			rrstr, LOCALZONE_RRSET_COUNT_MAX);
		return 1;
	}
	pd->count++;
	pd->rr_len = FUNC3(region, sizeof(*pd->rr_len)*pd->count);
	pd->rr_ttl = FUNC3(region, sizeof(*pd->rr_ttl)*pd->count);
	pd->rr_data = FUNC3(region, sizeof(*pd->rr_data)*pd->count);
	if(!pd->rr_len || !pd->rr_ttl || !pd->rr_data) {
		FUNC0("out of memory");
		return 0;
	}
	if(pd->count > 1) {
		FUNC2(pd->rr_len+1, oldlen, 
			sizeof(*pd->rr_len)*(pd->count-1));
		FUNC2(pd->rr_ttl+1, oldttl, 
			sizeof(*pd->rr_ttl)*(pd->count-1));
		FUNC2(pd->rr_data+1, olddata, 
			sizeof(*pd->rr_data)*(pd->count-1));
	}
	pd->rr_len[0] = rdata_len;
	pd->rr_ttl[0] = ttl;
	pd->rr_data[0] = FUNC4(region, rdata, rdata_len);
	if(!pd->rr_data[0]) {
		FUNC0("out of memory");
		return 0;
	}
	return 1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trust_anchor {TYPE_1__* autr; scalar_t__ dnskey_rrset; scalar_t__ ds_rrset; scalar_t__ numDNSKEY; scalar_t__ numDS; scalar_t__ dclass; int /*<<< orphan*/  name; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {unsigned int file; struct autr_ta* keys; scalar_t__ query_failed; scalar_t__ retry_time; scalar_t__ query_interval; scalar_t__ next_probe_time; scalar_t__ last_success; scalar_t__ last_queried; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autr_ta*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void 
FUNC6(struct trust_anchor* tp)
{
	struct autr_ta* ta;
	char buf[257];
	if(!tp->autr)
		return;
	FUNC2(tp->name, buf);
	FUNC3("trust point %s : %d", buf, (int)tp->dclass);
	FUNC3("assembled %d DS and %d DNSKEYs", 
		(int)tp->numDS, (int)tp->numDNSKEY);
	if(tp->ds_rrset) {
		FUNC4(0, "DS:", tp->ds_rrset);
	}
	if(tp->dnskey_rrset) {
		FUNC4(0, "DNSKEY:", tp->dnskey_rrset);
	}
	FUNC3("file %s", tp->autr->file);
	FUNC1(&tp->autr->last_queried, buf);
	if(buf[0]) buf[FUNC5(buf)-1]=0; /* remove newline */
	FUNC3("last_queried: %u %s", (unsigned)tp->autr->last_queried, buf);
	FUNC1(&tp->autr->last_success, buf);
	if(buf[0]) buf[FUNC5(buf)-1]=0; /* remove newline */
	FUNC3("last_success: %u %s", (unsigned)tp->autr->last_success, buf);
	FUNC1(&tp->autr->next_probe_time, buf);
	if(buf[0]) buf[FUNC5(buf)-1]=0; /* remove newline */
	FUNC3("next_probe_time: %u %s", (unsigned)tp->autr->next_probe_time,
		buf);
	FUNC3("query_interval: %u", (unsigned)tp->autr->query_interval);
	FUNC3("retry_time: %u", (unsigned)tp->autr->retry_time);
	FUNC3("query_failed: %u", (unsigned)tp->autr->query_failed);
		
	for(ta=tp->autr->keys; ta; ta=ta->next) {
		FUNC0(ta);
	}
}
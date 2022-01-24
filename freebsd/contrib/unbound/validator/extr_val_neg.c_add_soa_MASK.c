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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct val_neg_zone {size_t len; int /*<<< orphan*/  dclass; int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {int /*<<< orphan*/  rep; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  PACKED_RRSET_SOA_NEG ; 
 int /*<<< orphan*/  FUNC0 (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 struct ub_packed_rrset_key* FUNC3 (struct rrset_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rrset_cache* rrset_cache, time_t now,
	struct regional* region, struct dns_msg* msg, struct val_neg_zone* zone)
{
	struct ub_packed_rrset_key* soa;
	uint8_t* nm;
	size_t nmlen;
	uint16_t dclass;
	if(zone) {
		nm = zone->name;
		nmlen = zone->len;
		dclass = zone->dclass;
	} else {
		/* Assumes the signer is the zone SOA to add */
		nm = FUNC2(msg->rep, &nmlen, &dclass);
		if(!nm) 
			return 0;
	}
	soa = FUNC3(rrset_cache, nm, nmlen, LDNS_RR_TYPE_SOA, 
		dclass, PACKED_RRSET_SOA_NEG, now, 0);
	if(!soa)
		return 0;
	if(!FUNC0(msg, region, soa, now)) {
		FUNC1(&soa->entry.lock);
		return 0;
	}
	FUNC1(&soa->entry.lock);
	return 1;
}
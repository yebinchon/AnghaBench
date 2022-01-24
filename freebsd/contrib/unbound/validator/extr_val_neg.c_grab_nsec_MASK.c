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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ rrsig_count; int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ub_packed_rrset_key*,scalar_t__) ; 
 struct ub_packed_rrset_key* FUNC3 (struct ub_packed_rrset_key*,struct regional*,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC4 (struct rrset_cache*,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sec_status_secure ; 
 scalar_t__ sec_status_unchecked ; 

__attribute__((used)) static struct ub_packed_rrset_key*
FUNC5(struct rrset_cache* rrset_cache, uint8_t* qname, size_t qname_len,
	uint16_t qtype, uint16_t qclass, uint32_t flags, 
	struct regional* region, int checkbit, uint16_t checktype, 
	time_t now)
{
	struct ub_packed_rrset_key* r, *k = FUNC4(rrset_cache,
		qname, qname_len, qtype, qclass, flags, now, 0);
	struct packed_rrset_data* d;
	if(!k) return NULL;
	d = (struct packed_rrset_data*)k->entry.data;
	if(d->ttl < now) {
		FUNC0(&k->entry.lock);
		return NULL;
	}
	/* only secure or unchecked records that have signatures. */
	if( ! ( d->security == sec_status_secure ||
		(d->security == sec_status_unchecked &&
		d->rrsig_count > 0) ) ) {
		FUNC0(&k->entry.lock);
		return NULL;
	}
	/* check if checktype is absent */
	if(checkbit && (
		(qtype == LDNS_RR_TYPE_NSEC && FUNC2(k, checktype)) ||
		(qtype == LDNS_RR_TYPE_NSEC3 && !FUNC1(k, checktype))
		)) {
		FUNC0(&k->entry.lock);
		return NULL;
	}
	/* looks OK! copy to region and return it */
	r = FUNC3(k, region, now);
	/* if it failed, we return the NULL */
	FUNC0(&k->entry.lock);
	return r;
}
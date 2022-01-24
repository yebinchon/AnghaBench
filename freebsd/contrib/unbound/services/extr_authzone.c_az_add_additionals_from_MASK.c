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
struct regional {int dummy; } ;
struct packed_rrset_data {size_t count; int* rr_len; scalar_t__* rr_data; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {struct packed_rrset_data* data; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 struct auth_rrset* FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 struct auth_data* FUNC1 (struct auth_zone*,scalar_t__,size_t) ; 
 size_t FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC4(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_rrset* rrset, size_t offset)
{
	struct packed_rrset_data* d = rrset->data;
	size_t i;
	if(!d) return 0;
	for(i=0; i<d->count; i++) {
		size_t dlen;
		struct auth_data* domain;
		struct auth_rrset* ref;
		if(d->rr_len[i] < 2+offset)
			continue; /* too short */
		if(!(dlen = FUNC2(d->rr_data[i]+2+offset,
			d->rr_len[i]-2-offset)))
			continue; /* malformed */
		domain = FUNC1(z, d->rr_data[i]+2+offset, dlen);
		if(!domain)
			continue;
		if((ref=FUNC0(domain, LDNS_RR_TYPE_A)) != NULL) {
			if(!FUNC3(z, region, msg, domain, ref))
				return 0;
		}
		if((ref=FUNC0(domain, LDNS_RR_TYPE_AAAA)) != NULL) {
			if(!FUNC3(z, region, msg, domain, ref))
				return 0;
		}
	}
	return 1;
}
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
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {struct auth_rrset* rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_MX ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 struct auth_rrset* FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC2(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_data* node)
{
	struct auth_rrset* rrset;
	int added = 0;
	/* add a couple (at least one) RRs */
	if((rrset=FUNC0(node, LDNS_RR_TYPE_SOA)) != NULL) {
		if(!FUNC1(z, region, msg, node, rrset)) return 0;
		added++;
	}
	if((rrset=FUNC0(node, LDNS_RR_TYPE_MX)) != NULL) {
		if(!FUNC1(z, region, msg, node, rrset)) return 0;
		added++;
	}
	if((rrset=FUNC0(node, LDNS_RR_TYPE_A)) != NULL) {
		if(!FUNC1(z, region, msg, node, rrset)) return 0;
		added++;
	}
	if((rrset=FUNC0(node, LDNS_RR_TYPE_AAAA)) != NULL) {
		if(!FUNC1(z, region, msg, node, rrset)) return 0;
		added++;
	}
	if(added == 0 && node && node->rrsets) {
		if(!FUNC1(z, region, msg, node,
			node->rrsets)) return 0;
	}
	return 1;
}
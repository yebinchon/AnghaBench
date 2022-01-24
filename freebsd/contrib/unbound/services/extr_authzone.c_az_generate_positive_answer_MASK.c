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
struct auth_rrset {scalar_t__ type; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_MX ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SRV ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_rrset*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC2(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_data* node, struct auth_rrset* rrset)
{
	if(!FUNC1(z, region, msg, node, rrset)) return 0;
	/* see if we want additional rrs */
	if(rrset->type == LDNS_RR_TYPE_MX) {
		if(!FUNC0(z, region, msg, rrset, 2))
			return 0;
	} else if(rrset->type == LDNS_RR_TYPE_SRV) {
		if(!FUNC0(z, region, msg, rrset, 6))
			return 0;
	} else if(rrset->type == LDNS_RR_TYPE_NS) {
		if(!FUNC0(z, region, msg, rrset, 0))
			return 0;
	}
	return 1;
}
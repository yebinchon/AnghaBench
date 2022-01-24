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
struct regional {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct dns_msg {TYPE_1__ qinfo; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct regional*,struct dns_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct auth_rrset* FUNC2 (struct auth_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC4(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_data* node)
{
	struct auth_rrset* rrset;
	if(!FUNC0(z, region, msg)) return 0;
	/* DNSSEC denial NSEC */
	if((rrset=FUNC2(node, LDNS_RR_TYPE_NSEC))!=NULL) {
		if(!FUNC3(z, region, msg, node, rrset)) return 0;
	} else if(node) {
		/* DNSSEC denial NSEC3 */
		if(!FUNC1(z, region, msg, node->name,
			node->namelen, msg->qinfo.qname,
			msg->qinfo.qname_len, 1, 1, 0, 0))
			return 0;
	}
	return 1;
}
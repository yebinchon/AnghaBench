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
struct query_info {scalar_t__ qtype; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 struct auth_rrset* FUNC0 (struct auth_data*,scalar_t__) ; 
 int FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int FUNC2 (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 
 int FUNC3 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int FUNC4 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC5(struct auth_zone* z, struct query_info* qinfo,
	struct regional* region, struct dns_msg* msg, struct auth_data* node)
{
	struct auth_rrset* rrset;
	/* positive answer, rrset we are looking for exists */
	if((rrset=FUNC0(node, qinfo->qtype)) != NULL) {
		return FUNC4(z, region, msg, node, rrset);
	}
	/* CNAME? */
	if((rrset=FUNC0(node, LDNS_RR_TYPE_CNAME)) != NULL) {
		return FUNC2(z, qinfo, region, msg,
			node, rrset);
	}
	/* type ANY ? */
	if(qinfo->qtype == LDNS_RR_TYPE_ANY) {
		return FUNC1(z, region, msg, node);
	}
	/* NOERROR/NODATA (no such type at domain name) */
	return FUNC3(z, region, msg, node);
}
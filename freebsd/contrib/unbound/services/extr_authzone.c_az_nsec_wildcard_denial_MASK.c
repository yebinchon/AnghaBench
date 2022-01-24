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
typedef  int /*<<< orphan*/  wc ;
typedef  int uint8_t ;
struct regional {int dummy; } ;
struct query_info {int* qname; size_t qname_len; scalar_t__ qclass; scalar_t__ qtype; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct query_info*,int*,struct auth_data**) ; 
 struct auth_rrset* FUNC1 (struct auth_zone*,struct auth_data**) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC4(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, uint8_t* cenm, size_t cenmlen)
{
	struct query_info qinfo;
	int node_exact;
	struct auth_data* node;
	struct auth_rrset* nsec;
	uint8_t wc[LDNS_MAX_DOMAINLEN];
	if(cenmlen+2 > sizeof(wc))
		return 0; /* result would be too long */
	wc[0] = 1; /* length of wildcard label */
	wc[1] = (uint8_t)'*'; /* wildcard label */
	FUNC2(wc+2, cenm, cenmlen);

	/* we have '*.ce' in wc wildcard name buffer */
	/* get nsec cover for that */
	qinfo.qname = wc;
	qinfo.qname_len = cenmlen+2;
	qinfo.qtype = 0;
	qinfo.qclass = 0;
	FUNC0(z, &qinfo, &node_exact, &node);
	if((nsec=FUNC1(z, &node)) != NULL) {
		if(!FUNC3(z, region, msg, node, nsec)) return 0;
	}
	return 1;
}
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
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 struct auth_data* FUNC0 (struct auth_zone*,int**,size_t*,int*,int,size_t,int*,size_t) ; 
 struct auth_data* FUNC1 (struct auth_zone*,int*,size_t,int,size_t,int*,size_t) ; 
 struct auth_data* FUNC2 (struct auth_zone*,int*,size_t,int,size_t,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,size_t,int**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_zone*,int*,size_t*,int**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,size_t) ; 

__attribute__((used)) static int
FUNC7(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, uint8_t* cenm, size_t cenmlen, uint8_t* qname,
	size_t qname_len, int nodataproof, int ceproof, int nxproof,
	int wcproof)
{
	int algo;
	size_t iter, saltlen;
	uint8_t* salt;
	int no_exact_ce = 0;
	struct auth_data* node;

	/* find parameters of nsec3 proof */
	if(!FUNC5(z, &algo, &iter, &salt, &saltlen))
		return 1; /* no nsec3 */
	if(nodataproof) {
		/* see if the node has a hash of itself for the nodata
		 * proof nsec3, this has to be an exact match nsec3. */
		struct auth_data* match;
		match = FUNC2(z, qname, qname_len, algo,
			iter, salt, saltlen);
		if(match) {
			if(!FUNC4(z, region, msg, match))
				return 0;
			/* only nodata NSEC3 needed, no CE or others. */
			return 1;
		}
	}
	/* find ce that has an NSEC3 */
	if(ceproof) {
		node = FUNC0(z, &cenm, &cenmlen, &no_exact_ce,
			algo, iter, salt, saltlen);
		if(no_exact_ce) nxproof = 1;
		if(!FUNC4(z, region, msg, node))
			return 0;
	}

	if(nxproof) {
		uint8_t* nx;
		size_t nxlen;
		/* create nextcloser domain name */
		FUNC3(cenm, qname, qname_len, &nx, &nxlen);
		/* find nsec3 that matches or covers it */
		node = FUNC1(z, nx, nxlen, algo, iter, salt,
			saltlen);
		if(!FUNC4(z, region, msg, node))
			return 0;
	}
	if(wcproof) {
		/* create wildcard name *.ce */
		uint8_t wc[LDNS_MAX_DOMAINLEN];
		size_t wclen;
		if(cenmlen+2 > sizeof(wc))
			return 0; /* result would be too long */
		wc[0] = 1; /* length of wildcard label */
		wc[1] = (uint8_t)'*'; /* wildcard label */
		FUNC6(wc+2, cenm, cenmlen);
		wclen = cenmlen+2;
		/* find nsec3 that matches or covers it */
		node = FUNC1(z, wc, wclen, algo, iter, salt,
			saltlen);
		if(!FUNC4(z, region, msg, node))
			return 0;
	}
	return 1;
}
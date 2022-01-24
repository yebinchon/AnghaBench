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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

ldns_status
FUNC3(ldns_resolver *r, const ldns_rr *rr)
{
	ldns_rdf *address;
	if ((!rr) || (FUNC1(rr) != LDNS_RR_TYPE_A &&
			FUNC1(rr) != LDNS_RR_TYPE_AAAA)) {
		return LDNS_STATUS_ERR;
	}
	address = FUNC2(rr, 0); /* extract the ip number */
	if (address) {
		return FUNC0(r, address);
	} else {
		return LDNS_STATUS_ERR;
	}
}
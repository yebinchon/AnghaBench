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
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_MX ; 
 scalar_t__ M_DEFAULT_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ o_mode ; 
 scalar_t__ o_rrtype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static bool
FUNC3(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_pkt *pkt;
    ldns_rdf *dname;

    dname = FUNC2(res, domain, &pkt, absolute, true);
    FUNC1(res, dname != NULL ? dname : domain, pkt);
    return o_mode != M_DEFAULT_Q ? (dname != NULL) :
        (dname != NULL) &&
        (o_rrtype = LDNS_RR_TYPE_AAAA, FUNC0(res, dname)) &&
        (o_rrtype = LDNS_RR_TYPE_MX, FUNC0(res, dname));
}
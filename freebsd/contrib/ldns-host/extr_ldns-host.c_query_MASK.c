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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  scalar_t__ ldns_pkt_rcode ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  LDNS_RD ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ o_ignore_servfail ; 
 int /*<<< orphan*/  o_ixfr_serial ; 
 scalar_t__ o_recursive ; 
 int /*<<< orphan*/  o_rrclass ; 
 int /*<<< orphan*/  o_rrtype ; 
 scalar_t__ o_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static bool
FUNC9(ldns_resolver *res, ldns_rdf *domain, ldns_pkt **pkt, bool close_tcp) {
    ldns_status status;
    ldns_pkt_rcode rcode;
    int i, cnt;

    if (o_verbose) {
        FUNC8("Trying \"");
        FUNC7(domain);
        FUNC8("\"\n");
    }
    for (cnt = FUNC3(res), i = 0; i < cnt; i++) {
        status = FUNC4(pkt, res, domain, o_rrtype,
            o_rrclass, o_recursive ? LDNS_RD : 0, o_ixfr_serial, i,
            close_tcp);
        if (status != LDNS_STATUS_OK) {
            *pkt = NULL;
            continue;
        }
        if (FUNC2(*pkt) && !FUNC6(res)) {
            if (o_verbose)
                FUNC8(";; Truncated, retrying in TCP mode.\n");
            FUNC5(res, true);
            status = FUNC4(pkt, res, domain, o_rrtype,
                o_rrclass, o_recursive ? LDNS_RD : 0, o_ixfr_serial, i,
                close_tcp);
            FUNC5(res, false);
            if (status != LDNS_STATUS_OK)
                continue;
        }
        rcode = FUNC1(*pkt);
        if (o_ignore_servfail && rcode == LDNS_RCODE_SERVFAIL && cnt > 1)
            continue;
        return rcode == LDNS_RCODE_NOERROR;
    }
    if (*pkt == NULL) {
        FUNC8(";; connection timed out; no servers could be reached\n");
        FUNC0(1);
    }
    return false;
}
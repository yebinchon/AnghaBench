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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RESOLV_INET ; 
 scalar_t__ LDNS_RESOLV_INET6 ; 
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ ** FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int o_print_pkt_server ; 
 int o_recursive ; 
 int /*<<< orphan*/  o_rrtype ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static bool
FUNC12(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_rr_list *answer, **nsaddrs;
    ldns_rdf *dname, *addr;
    ldns_pkt *pkt;
    ldns_rr *rr;
    size_t i, j, n, cnt;

    if ((dname = FUNC11(res, domain, &pkt, absolute, true)) == NULL)
        return false;

    answer = FUNC3(pkt);
    cnt = FUNC9(answer);
    nsaddrs = FUNC0(cnt*sizeof(*nsaddrs));
    for (n = 0, i = 0; i < cnt; i++)
        if ((addr = FUNC10(FUNC8(answer, i))) != NULL)
            nsaddrs[n++] = FUNC2(res, 
                addr, LDNS_RR_CLASS_IN, 0); 

    o_print_pkt_server = false;
    o_recursive = false;
    o_rrtype = LDNS_RR_TYPE_SOA;
    for (i = 0; i < n; i++) {
        cnt = FUNC9(nsaddrs[i]);
        for (j = 0; j < cnt; j++) {
            FUNC6(res);
            rr = FUNC8(nsaddrs[i], j);
            if ((FUNC4(res) == LDNS_RESOLV_INET &&
                FUNC7(rr) == LDNS_RR_TYPE_AAAA) ||
                (FUNC4(res) == LDNS_RESOLV_INET6 &&
                FUNC7(rr) == LDNS_RR_TYPE_A))
                continue;
            if (FUNC5(res, rr) == LDNS_STATUS_OK)
                /* bind9-host queries for domain, not dname here */
                FUNC1(res, dname);
        }
    }
    return 0;
}
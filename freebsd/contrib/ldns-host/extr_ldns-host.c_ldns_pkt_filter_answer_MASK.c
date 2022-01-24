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
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_AXFR ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(ldns_pkt *pkt, ldns_rr_type type) {
    int i, j, cnt;
    ldns_rr_list *rrlist;
    ldns_rr *rr;
    ldns_rr_type rrtype;

    rrlist = FUNC0(pkt);
    cnt = FUNC3(rrlist);
    for (i = j = 0; i < cnt; i++) {
        rr = FUNC2(rrlist, i);
        rrtype = FUNC1(rr);
        if (type == LDNS_RR_TYPE_ANY ||
            type == rrtype ||
            (type == LDNS_RR_TYPE_AXFR &&
                (rrtype == LDNS_RR_TYPE_A ||
                rrtype == LDNS_RR_TYPE_AAAA ||
                rrtype == LDNS_RR_TYPE_NS ||
                rrtype == LDNS_RR_TYPE_PTR)))
            FUNC4(rrlist, rr, j++);
    }
    FUNC5(rrlist, j);
}
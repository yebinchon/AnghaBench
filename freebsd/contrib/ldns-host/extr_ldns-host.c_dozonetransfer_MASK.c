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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AXFR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_IXFR ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ M_AXFR ; 
 scalar_t__ M_IXFR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ o_ixfr_serial ; 
 scalar_t__ o_mode ; 
 int /*<<< orphan*/  o_rrtype ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static bool
FUNC18(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_pkt *pkt, *nextpkt;
    ldns_rdf *dname;
    ldns_rr_type rrtype;
    ldns_rr_list *rrl;
    ldns_rr *rr;
    size_t i, nsoa = 0;
    uint32_t first_serial = 0;

    rrtype = o_rrtype;
    o_rrtype = (o_mode == M_AXFR) ? LDNS_RR_TYPE_AXFR : LDNS_RR_TYPE_IXFR;
    dname = FUNC17(res, domain, &pkt, absolute, false);

    for (;;) {
        rrl = FUNC8(FUNC0(pkt));
        FUNC2(pkt, rrtype);
        FUNC16(res, dname != NULL ? dname : domain, pkt);
        if ((dname == NULL) ||
                (FUNC4(pkt) != LDNS_RCODE_NOERROR)) {
            FUNC15("; Transfer failed.\n");
            FUNC13(res);
            return false;
        }
        for (i = 0; i < FUNC11(rrl); i++) {
            rr = FUNC10(rrl, i);
            if (nsoa == 0) {
                if (FUNC7(rr) != LDNS_RR_TYPE_SOA) {
                    FUNC15("; Transfer failed. "
                           "Didn't start with SOA answer.\n");
                    FUNC13(res);
                    return false;
                }
                first_serial = FUNC12(rr);
                if ((o_mode == M_IXFR) && (first_serial <= o_ixfr_serial)) {
                    FUNC13(res);
                    return true;
                }
            }
            if (FUNC7(rr) == LDNS_RR_TYPE_SOA) {
                nsoa = nsoa < 2 ? nsoa + 1 : 1;
                if ((nsoa == 2) &&
                        (FUNC12(rr) == first_serial)) {
                    FUNC13(res);
                    return true;
                }
            }
        }
        if (FUNC14(&nextpkt, res) != LDNS_STATUS_OK) {
            FUNC15("; Transfer failed.\n");
            return false;
        }
        FUNC5(nextpkt,
                FUNC6(FUNC1(pkt)));
        FUNC3(pkt);
        FUNC9(rrl);
        pkt = nextpkt;
    }
}
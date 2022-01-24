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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  scalar_t__ ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  const ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_IXFR ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const** FUNC8 (int /*<<< orphan*/ *) ; 
 size_t* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ldns_status
FUNC17(ldns_pkt **answer, ldns_resolver *res,
    const ldns_rdf *name, ldns_rr_type t, ldns_rr_class c,
    uint16_t flags, uint32_t ixfr_serial, int nameserver,
    bool close_tcp) {
    ldns_status status = LDNS_STATUS_OK;
    ldns_pkt *qpkt;
    struct timeval now;

    int nscnt = FUNC7(res);
    ldns_rdf **ns = FUNC8(res);
    size_t *rtt = FUNC9(res);

    FUNC12(res, &ns[nameserver]);
    FUNC13(res, &rtt[nameserver]);
    FUNC11(res, 1);

    /* The next fragment should have been a call to
     * ldns_resolver_prepare_query_pkt(), but starting with ldns
     * version 1.6.17 that function tries to add it's own SOA
     * records when rr_type is LDNS_RR_TYPE_IXFR, and we don't
     * want that.
     */
    qpkt = FUNC2(FUNC6(name), t, c, flags);
    if (qpkt == NULL) {
        status = LDNS_STATUS_ERR;
        goto done;
    }
    now.tv_sec = FUNC16(NULL);
    now.tv_usec = 0;
    FUNC5(qpkt, now);
    FUNC4(qpkt);

    if (t == LDNS_RR_TYPE_IXFR) {
        status = FUNC1(qpkt,
            LDNS_SECTION_AUTHORITY, name, c, ixfr_serial);
        if (status != LDNS_STATUS_OK) goto done;
    }
    if (close_tcp) {
        status = FUNC10(answer, res, qpkt);
    } else {
        status = FUNC15(res, qpkt, 0);
        if (status != LDNS_STATUS_OK) goto done;
        status = FUNC14(answer, res);
        if (status != LDNS_STATUS_OK) goto done;
        FUNC3(*answer, FUNC6(ns[0]));
    }

done:
    FUNC0(qpkt);

    FUNC12(res, ns);
    FUNC13(res, rtt);
    FUNC11(res, nscnt);
    return status;
}
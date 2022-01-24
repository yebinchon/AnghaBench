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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  const ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT32 ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_PERIOD ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ldns_status
FUNC11(ldns_pkt *pkt, ldns_pkt_section sec,
    const ldns_rdf *name, ldns_rr_class c, uint32_t serial) {
    ldns_rdf *rdf;
    ldns_rr *rr;
    uint32_t n;

    if ((rr = FUNC5(LDNS_RR_TYPE_SOA)) == NULL)
        return LDNS_STATUS_MEM_ERR;
    FUNC7(rr, c);
    FUNC8(rr, FUNC2(name));
    FUNC10(rr, 0);

    n = 0;
    if ((rdf = FUNC3(LDNS_RDF_TYPE_DNAME, 1, &n)) == NULL)
        goto memerr;
    FUNC9(rr, rdf, 0);
    FUNC9(rr, FUNC2(rdf), 1);

    n = FUNC0(serial);
    if ((rdf = FUNC3(LDNS_RDF_TYPE_INT32, 4, &n)) == NULL)
        goto memerr;
    FUNC9(rr, rdf, 2);

    n = 0;
    if ((rdf = FUNC3(LDNS_RDF_TYPE_PERIOD, 4, &n)) == NULL)
        goto memerr;
    FUNC9(rr, rdf, 3);
    FUNC9(rr, FUNC2(rdf), 4);
    FUNC9(rr, FUNC2(rdf), 5);
    FUNC9(rr, FUNC2(rdf), 6);

    if (FUNC6(rr, 1) == NULL || FUNC6(rr, 4) == NULL ||
        FUNC6(rr, 5) == NULL || FUNC6(rr, 6) == NULL ||
        !FUNC1(pkt, sec, rr))
        goto memerr;
    return LDNS_STATUS_OK;

memerr:
    FUNC4(rr);
    return LDNS_STATUS_MEM_ERR;
}
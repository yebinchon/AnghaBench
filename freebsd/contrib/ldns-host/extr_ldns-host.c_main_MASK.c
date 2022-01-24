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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ DEFAULT_TCP_TIMEOUT ; 
 scalar_t__ DEFAULT_UDP_TIMEOUT ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_PTR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ M_AXFR ; 
 scalar_t__ M_IXFR ; 
 scalar_t__ M_SINGLE_Q ; 
 scalar_t__ M_SOA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ o_ip6_int ; 
 int /*<<< orphan*/  o_ipversion ; 
 scalar_t__ o_mode ; 
 int /*<<< orphan*/  o_name ; 
 scalar_t__ o_ndots ; 
 scalar_t__ o_retries ; 
 int /*<<< orphan*/  o_rrtype ; 
 scalar_t__ o_server ; 
 scalar_t__ o_tcp ; 
 scalar_t__ o_timeout ; 
 int /*<<< orphan*/  FUNC20 (int,char**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC24(int argc, char *argv[]) {
    ldns_rdf *addr, *dname;
    ldns_resolver *res;
    ldns_status status;
    struct timeval restimeout;

    FUNC20(argc, argv);

    status = FUNC9(&res);
    if (status != LDNS_STATUS_OK)
        FUNC0(1, "error creating resolver: %s", FUNC5(status));
    if (FUNC8(res) == 0)
        FUNC10(res);

    FUNC16(res, o_tcp);
    restimeout.tv_sec = o_timeout > 0 ? o_timeout :
        o_tcp ? DEFAULT_TCP_TIMEOUT : DEFAULT_UDP_TIMEOUT;
    restimeout.tv_usec = 0;
    FUNC15(res, restimeout);
    FUNC14(res, o_retries+1);
    FUNC13(res, o_ipversion);
    FUNC11(res, false);
    FUNC12(res, false);

    if (o_server)
        FUNC21(res, o_server);

    if (FUNC17(&addr, o_name) == LDNS_STATUS_OK) {
        dname = FUNC6(addr, "in-addr.arpa");
        if (dname == NULL)
            FUNC0(1, "can't reverse '%s': %s", o_name,
                FUNC5(LDNS_STATUS_MEM_ERR));
        o_mode = M_SINGLE_Q;
        o_rrtype = LDNS_RR_TYPE_PTR;
        return !FUNC1(res, dname);
    } else if (FUNC18(&addr, o_name) == LDNS_STATUS_OK) {
        dname = FUNC7(addr, o_ip6_int ? "ip6.int" : "ip6.arpa");
        if (dname == NULL)
            FUNC0(1, "can't reverse '%s': %s", o_name,
                FUNC5(LDNS_STATUS_MEM_ERR));
        o_mode = M_SINGLE_Q;
        o_rrtype = LDNS_RR_TYPE_PTR;
        return !FUNC1(res, dname);
    }
    return !(o_mode == M_SOA ? dosoa :
             o_mode == M_AXFR ? dozonetransfer :
             o_mode == M_IXFR ? dozonetransfer :
             dosearch)
        (res, FUNC22(o_name), FUNC19(o_name) >= o_ndots);
}
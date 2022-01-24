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
typedef  scalar_t__ ldns_pkt_rcode ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ M_SINGLE_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ o_mode ; 
 int o_print_pkt_server ; 
 int /*<<< orphan*/  o_print_rr_server ; 
 int /*<<< orphan*/  o_rrtype ; 
 char* o_server ; 
 scalar_t__ o_verbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void
FUNC13(ldns_resolver *res, ldns_rdf *domain, ldns_pkt *pkt) {
    ldns_pkt_rcode rcode;

    if (o_print_pkt_server) {
        FUNC12("Using domain server:\nName: %s\nAddress: ", o_server);
        FUNC8(FUNC1(pkt));
        FUNC12("#%d\nAliases: \n\n", FUNC3(res));
        o_print_pkt_server = false;
    }
    rcode = FUNC2(pkt);
    if (rcode != LDNS_RCODE_NOERROR) {
        FUNC12("Host ");
        FUNC9(domain);
        FUNC12(" not found: %d(", rcode);
        FUNC7(rcode);
        FUNC12(")\n");
    } else {
        if (o_verbose) {
            FUNC6(pkt);
        } else {
            FUNC5(pkt, o_print_rr_server);
            if (o_mode == M_SINGLE_Q &&
                FUNC4(FUNC0(pkt)) == 0) {
                FUNC9(domain);
                FUNC12(" has no ");
                FUNC11(o_rrtype);
                FUNC12(" record\n");
            }
        }
    }
    if (o_verbose)
        FUNC10(res, pkt);
}
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

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  CTLFLAG_RWO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _net_inet_ipf ; 
 int /*<<< orphan*/  ipf_auth_defaultage ; 
 int /*<<< orphan*/  ipf_auth_size ; 
 int /*<<< orphan*/  ipf_auth_softc_t ; 
 int /*<<< orphan*/  ipf_auth_used ; 
 int /*<<< orphan*/  ipf_clist ; 
 int /*<<< orphan*/  ipf_frag_softc_t ; 
 int /*<<< orphan*/  ipf_nat_defage ; 
 int /*<<< orphan*/  ipf_nat_hostmap_sz ; 
 int /*<<< orphan*/  ipf_nat_maprules_sz ; 
 int /*<<< orphan*/  ipf_nat_rdrrules_sz ; 
 int /*<<< orphan*/  ipf_nat_softc_t ; 
 int /*<<< orphan*/  ipf_nat_table_max ; 
 int /*<<< orphan*/  ipf_nat_table_sz ; 
 int /*<<< orphan*/  ipf_state_max ; 
 int /*<<< orphan*/  ipf_state_size ; 
 int /*<<< orphan*/  ipf_state_softc_t ; 
 int /*<<< orphan*/  ipfr_ttl ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void)
{

	FUNC5(&ipf_clist);

	FUNC2(_net_inet_ipf, OID_AUTO, "fr_defnatage", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_defage), 0, "");
	FUNC3(_net_inet_ipf, OID_AUTO, "fr_statesize", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_state_softc_t, ipf_state_size), 0, "");
	FUNC3(_net_inet_ipf, OID_AUTO, "fr_statemax", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_state_softc_t, ipf_state_max), 0, "");
	FUNC2(_net_inet_ipf, OID_AUTO, "ipf_nattable_max", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_table_max), 0, "");
	FUNC2(_net_inet_ipf, OID_AUTO, "ipf_nattable_sz", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_table_sz), 0, "");
	FUNC2(_net_inet_ipf, OID_AUTO, "ipf_natrules_sz", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_maprules_sz), 0, "");
	FUNC2(_net_inet_ipf, OID_AUTO, "ipf_rdrrules_sz", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_rdrrules_sz), 0, "");
	FUNC2(_net_inet_ipf, OID_AUTO, "ipf_hostmap_sz", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_nat_softc_t, ipf_nat_hostmap_sz), 0, "");
	FUNC0(_net_inet_ipf, OID_AUTO, "fr_authsize", CTLFLAG_RWO,
	    (void *)FUNC4(ipf_auth_softc_t, ipf_auth_size), 0, "");
	FUNC0(_net_inet_ipf, OID_AUTO, "fr_authused", CTLFLAG_RD,
	    (void *)FUNC4(ipf_auth_softc_t, ipf_auth_used), 0, "");
	FUNC0(_net_inet_ipf, OID_AUTO, "fr_defaultauthage", CTLFLAG_RW,
	    (void *)FUNC4(ipf_auth_softc_t, ipf_auth_defaultage), 0, "");
	FUNC1(_net_inet_ipf, OID_AUTO, "fr_ipfrttl", CTLFLAG_RW,
	    (void *)FUNC4(ipf_frag_softc_t, ipfr_ttl), 0, "");
	return 0;
}
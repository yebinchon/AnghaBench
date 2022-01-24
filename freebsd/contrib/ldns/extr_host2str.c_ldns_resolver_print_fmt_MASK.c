#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_output_format ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  LDNS_RESOLV_RTT_INF 129 
#define  LDNS_RESOLV_RTT_MIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 size_t FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/  const*) ; 
 size_t* FUNC21 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC22 (int /*<<< orphan*/  const*) ; 
 size_t FUNC23 (int /*<<< orphan*/  const*) ; 
 TYPE_1__ FUNC24 (int /*<<< orphan*/  const*) ; 
 char* FUNC25 (int /*<<< orphan*/  const*) ; 
 char* FUNC26 (int /*<<< orphan*/  const*) ; 
 int FUNC27 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 

void
FUNC30(FILE *output, 
		const ldns_output_format *fmt, const ldns_resolver *r)
{
	uint16_t i;
	ldns_rdf **n;
	ldns_rdf **s;
	size_t *rtt;
	if (!r) {
		return;
	}
	n = FUNC15(r);
	s = FUNC22(r);
	rtt = FUNC21(r);

	FUNC0(output, "port: %d\n", (int)FUNC16(r));
	FUNC0(output, "edns0 size: %d\n", (int)FUNC9(r));
	FUNC0(output, "use ip6: %d\n", (int)FUNC13(r));

	FUNC0(output, "recursive: %d\n", FUNC18(r));
	FUNC0(output, "usevc: %d\n", FUNC27(r));
	FUNC0(output, "igntc: %d\n", FUNC12(r));
	FUNC0(output, "fail: %d\n", FUNC10(r));
	FUNC0(output, "retry: %d\n", (int)FUNC20(r));
	FUNC0(output, "retrans: %d\n", (int)FUNC19(r));
	FUNC0(output, "fallback: %d\n", FUNC11(r));
	FUNC0(output, "random: %d\n", FUNC17(r));
	FUNC0(output, "timeout: %d\n", (int)FUNC24(r).tv_sec);
	FUNC0(output, "dnssec: %d\n", FUNC5(r));
	FUNC0(output, "dnssec cd: %d\n", FUNC7(r));
	FUNC0(output, "trust anchors (%d listed):\n",
		(int)FUNC29(FUNC6(r)));
	FUNC28(output, fmt, FUNC6(r));
	FUNC0(output, "tsig: %s %s\n",
                FUNC26(r)?FUNC26(r):"-",
                FUNC25(r)?FUNC25(r):"-");
	FUNC0(output, "debug: %d\n", FUNC2(r));

	FUNC0(output, "default domain: ");
	FUNC1(output, FUNC8(r));
	FUNC0(output, "\n");
	FUNC0(output, "apply default domain: %d\n", FUNC3(r));

	FUNC0(output, "searchlist (%d listed):\n",  (int)FUNC23(r));
	for (i = 0; i < FUNC23(r); i++) {
		FUNC0(output, "\t");
		FUNC1(output, s[i]);
		FUNC0(output, "\n");
	}
	FUNC0(output, "apply search list: %d\n", FUNC4(r));

	FUNC0(output, "nameservers (%d listed):\n", (int)FUNC14(r));
	for (i = 0; i < FUNC14(r); i++) {
		FUNC0(output, "\t");
		FUNC1(output, n[i]);

		switch ((int)rtt[i]) {
			case LDNS_RESOLV_RTT_MIN:
			FUNC0(output, " - reachable\n");
			break;
			case LDNS_RESOLV_RTT_INF:
			FUNC0(output, " - unreachable\n");
			break;
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_pkt ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef  TYPE_1__ ldns_lookup_table ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ldns_opcodes ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ldns_rcodes ; 

ldns_status
FUNC17(ldns_buffer *output, const ldns_pkt *pkt)
{
	ldns_lookup_table *opcode = FUNC2(ldns_opcodes,
			                    (int) FUNC8(pkt));
	ldns_lookup_table *rcode = FUNC2(ldns_rcodes,
			                    (int) FUNC9(pkt));

	FUNC0(output, ";; ->>HEADER<<- ");
	if (opcode) {
		FUNC0(output, "opcode: %s, ", opcode->name);
	} else {
		FUNC0(output, "opcode: ?? (%u), ",
				FUNC8(pkt));
	}
	if (rcode) {
		FUNC0(output, "rcode: %s, ", rcode->name);
	} else {
		FUNC0(output, "rcode: ?? (%u), ", FUNC9(pkt));
	}
	FUNC0(output, "id: %d\n", FUNC10(pkt));
	FUNC0(output, ";; flags: ");

	if (FUNC13(pkt)) {
		FUNC0(output, "qr ");
	}
	if (FUNC3(pkt)) {
		FUNC0(output, "aa ");
	}
	if (FUNC16(pkt)) {
		FUNC0(output, "tc ");
	}
	if (FUNC15(pkt)) {
		FUNC0(output, "rd ");
	}
	if (FUNC7(pkt)) {
		FUNC0(output, "cd ");
	}
	if (FUNC14(pkt)) {
		FUNC0(output, "ra ");
	}
	if (FUNC4(pkt)) {
		FUNC0(output, "ad ");
	}
	FUNC0(output, "; ");
	FUNC0(output, "QUERY: %u, ", FUNC12(pkt));
	FUNC0(output, "ANSWER: %u, ", FUNC5(pkt));
	FUNC0(output, "AUTHORITY: %u, ", FUNC11(pkt));
	FUNC0(output, "ADDITIONAL: %u ", FUNC6(pkt));
	return FUNC1(output);
}
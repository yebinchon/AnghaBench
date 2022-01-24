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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct tok {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ OFPET_BAD_ACTION ; 
 scalar_t__ OFPET_BAD_REQUEST ; 
 scalar_t__ OFPET_FLOW_MOD_FAILED ; 
 scalar_t__ OFPET_HELLO_FAILED ; 
 scalar_t__ OFPET_PORT_MOD_FAILED ; 
 scalar_t__ OFPET_QUEUE_OP_FAILED ; 
 scalar_t__ const OF_ERROR_MSG_LEN ; 
 struct tok* empty_str ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__ const) ; 
 struct tok* ofpbac_str ; 
 struct tok* ofpbrc_str ; 
 struct tok const* ofpet_str ; 
 struct tok* ofpfmfc_str ; 
 struct tok* ofphfc_str ; 
 struct tok* ofppmfc_str ; 
 struct tok* ofpqofc_str ; 
 int /*<<< orphan*/  FUNC4 (struct tok const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC5(netdissect_options *ndo,
                 const u_char *cp, const u_char *ep, const u_int len)
{
	uint16_t type;
	const struct tok *code_str;

	/* type */
	FUNC2(*cp, 2);
	type = FUNC0(cp);
	cp += 2;
	FUNC1((ndo, "\n\t type %s", FUNC4(ofpet_str, "invalid (0x%04x)", type)));
	/* code */
	FUNC2(*cp, 2);
	code_str =
		type == OFPET_HELLO_FAILED    ? ofphfc_str  :
		type == OFPET_BAD_REQUEST     ? ofpbrc_str  :
		type == OFPET_BAD_ACTION      ? ofpbac_str  :
		type == OFPET_FLOW_MOD_FAILED ? ofpfmfc_str :
		type == OFPET_PORT_MOD_FAILED ? ofppmfc_str :
		type == OFPET_QUEUE_OP_FAILED ? ofpqofc_str :
		empty_str;
	FUNC1((ndo, ", code %s", FUNC4(code_str, "invalid (0x%04x)", FUNC0(cp))));
	cp += 2;
	/* data */
	return FUNC3(ndo, cp, ep, len - OF_ERROR_MSG_LEN);

trunc:
	FUNC1((ndo, "%s", tstr));
	return ep;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_9__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int AOEV1_CMD_ISSUE_ATA_COMMAND ; 
 int AOEV1_CMD_MAC_MASK_LIST ; 
 int AOEV1_CMD_QUERY_CONFIG_INFORMATION ; 
 int AOEV1_CMD_RESERVE_RELEASE ; 
 int const AOEV1_COMMON_HDR_LEN ; 
 int AOEV1_FLAG_E ; 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  aoev1_errcode_str ; 
 int /*<<< orphan*/  aoev1_flag_str ; 
 void FUNC4 (TYPE_1__*,int const*,int const) ; 
 void FUNC5 (TYPE_1__*,int const*,int const) ; 
 void FUNC6 (TYPE_1__*,int const*,int const) ; 
 void FUNC7 (TYPE_1__*,int const*,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cmdcode_str ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC10(netdissect_options *ndo,
            const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint8_t flags, command;
	void (*cmd_decoder)(netdissect_options *, const u_char *, const u_int);

	if (len < AOEV1_COMMON_HDR_LEN)
		goto invalid;
	/* Flags */
	flags = *cp & 0x0F;
	FUNC2((ndo, ", Flags: [%s]", FUNC8(aoev1_flag_str, "none", flags)));
	cp += 1;
	if (! ndo->ndo_vflag)
		return;
	/* Error */
	FUNC3(*cp, 1);
	if (flags & AOEV1_FLAG_E)
		FUNC2((ndo, "\n\tError: %s", FUNC9(aoev1_errcode_str, "Invalid (%u)", *cp)));
	cp += 1;
	/* Major */
	FUNC3(*cp, 2);
	FUNC2((ndo, "\n\tMajor: 0x%04x", FUNC0(cp)));
	cp += 2;
	/* Minor */
	FUNC3(*cp, 1);
	FUNC2((ndo, ", Minor: 0x%02x", *cp));
	cp += 1;
	/* Command */
	FUNC3(*cp, 1);
	command = *cp;
	cp += 1;
	FUNC2((ndo, ", Command: %s", FUNC9(cmdcode_str, "Unknown (0x%02x)", command)));
	/* Tag */
	FUNC3(*cp, 4);
	FUNC2((ndo, ", Tag: 0x%08x", FUNC1(cp)));
	cp += 4;
	/* Arg */
	cmd_decoder =
		command == AOEV1_CMD_ISSUE_ATA_COMMAND        ? aoev1_issue_print :
		command == AOEV1_CMD_QUERY_CONFIG_INFORMATION ? aoev1_query_print :
		command == AOEV1_CMD_MAC_MASK_LIST            ? aoev1_mac_print :
		command == AOEV1_CMD_RESERVE_RELEASE          ? aoev1_reserve_print :
		NULL;
	if (cmd_decoder != NULL)
		cmd_decoder(ndo, cp, len - AOEV1_COMMON_HDR_LEN);
	return;

invalid:
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp, ep - cp);
	return;
trunc:
	FUNC2((ndo, "%s", tstr));
}
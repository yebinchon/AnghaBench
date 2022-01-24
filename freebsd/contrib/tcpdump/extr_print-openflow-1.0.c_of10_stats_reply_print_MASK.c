#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_13__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int const) ; 
 int /*<<< orphan*/  OFPSF_REPLY_U ; 
 scalar_t__ OFPST_AGGREGATE ; 
 scalar_t__ OFPST_DESC ; 
 scalar_t__ OFPST_FLOW ; 
 scalar_t__ OFPST_PORT ; 
 scalar_t__ OFPST_QUEUE ; 
 scalar_t__ OFPST_TABLE ; 
 scalar_t__ OFPST_VENDOR ; 
 int const OF_STATS_REPLY_LEN ; 
 int /*<<< orphan*/  const* FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  ofpsf_reply_bm ; 
 int /*<<< orphan*/  ofpst_str ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC12(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
	const u_char *cp0 = cp;
	uint16_t type;

	/* type */
	FUNC2(*cp, 2);
	type = FUNC0(cp);
	FUNC1((ndo, "\n\t type %s", FUNC11(ofpst_str, "invalid (0x%04x)", type)));
	cp += 2;
	/* flags */
	FUNC2(*cp, 2);
	FUNC1((ndo, ", flags 0x%04x", FUNC0(cp)));
	FUNC4(ndo, ofpsf_reply_bm, FUNC0(cp), OFPSF_REPLY_U);
	cp += 2;

	if (ndo->ndo_vflag > 0) {
		const u_char *(*decoder)(netdissect_options *, const u_char *, const u_char *, u_int) =
			type == OFPST_DESC      ? of10_desc_stats_reply_print      :
			type == OFPST_FLOW      ? of10_flow_stats_reply_print      :
			type == OFPST_AGGREGATE ? of10_aggregate_stats_reply_print :
			type == OFPST_TABLE     ? of10_table_stats_reply_print     :
			type == OFPST_PORT      ? of10_port_stats_reply_print      :
			type == OFPST_QUEUE     ? of10_queue_stats_reply_print     :
			type == OFPST_VENDOR    ? of10_vendor_data_print           :
			NULL;
		if (decoder != NULL)
			return decoder(ndo, cp, ep, len - OF_STATS_REPLY_LEN);
	}
	FUNC2(*cp0, len);
	return cp0 + len;

trunc:
	FUNC1((ndo, "%s", tstr));
	return ep;
}
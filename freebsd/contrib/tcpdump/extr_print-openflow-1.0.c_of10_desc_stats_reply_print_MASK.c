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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int DESC_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,scalar_t__ const) ; 
 scalar_t__ const OF_DESC_STATS_LEN ; 
 int SERIAL_NUM_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC3(netdissect_options *ndo,
                            const u_char *cp, const u_char *ep, const u_int len)
{
	if (len != OF_DESC_STATS_LEN)
		goto invalid;
	/* mfr_desc */
	FUNC1(*cp, DESC_STR_LEN);
	FUNC0((ndo, "\n\t  mfr_desc '"));
	FUNC2(ndo, cp, cp + DESC_STR_LEN);
	FUNC0((ndo, "'"));
	cp += DESC_STR_LEN;
	/* hw_desc */
	FUNC1(*cp, DESC_STR_LEN);
	FUNC0((ndo, "\n\t  hw_desc '"));
	FUNC2(ndo, cp, cp + DESC_STR_LEN);
	FUNC0((ndo, "'"));
	cp += DESC_STR_LEN;
	/* sw_desc */
	FUNC1(*cp, DESC_STR_LEN);
	FUNC0((ndo, "\n\t  sw_desc '"));
	FUNC2(ndo, cp, cp + DESC_STR_LEN);
	FUNC0((ndo, "'"));
	cp += DESC_STR_LEN;
	/* serial_num */
	FUNC1(*cp, SERIAL_NUM_LEN);
	FUNC0((ndo, "\n\t  serial_num '"));
	FUNC2(ndo, cp, cp + SERIAL_NUM_LEN);
	FUNC0((ndo, "'"));
	cp += SERIAL_NUM_LEN;
	/* dp_desc */
	FUNC1(*cp, DESC_STR_LEN);
	FUNC0((ndo, "\n\t  dp_desc '"));
	FUNC2(ndo, cp, cp + DESC_STR_LEN);
	FUNC0((ndo, "'"));
	return cp + DESC_STR_LEN;

invalid: /* skip the message body */
	FUNC0((ndo, "%s", istr));
	FUNC1(*cp, len);
	return cp + len;
trunc:
	FUNC0((ndo, "%s", tstr));
	return ep;
}
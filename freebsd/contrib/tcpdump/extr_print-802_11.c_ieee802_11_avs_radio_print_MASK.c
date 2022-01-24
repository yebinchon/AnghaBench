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
typedef  int uint32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static u_int
FUNC3(netdissect_options *ndo,
                           const u_char *p, u_int length, u_int caplen)
{
	uint32_t caphdr_len;

	if (caplen < 8) {
		FUNC1((ndo, "%s", tstr));
		return caplen;
	}

	caphdr_len = FUNC0(p + 4);
	if (caphdr_len < 8) {
		/*
		 * Yow!  The capture header length is claimed not
		 * to be large enough to include even the version
		 * cookie or capture header length!
		 */
		FUNC1((ndo, "%s", tstr));
		return caplen;
	}

	if (caplen < caphdr_len) {
		FUNC1((ndo, "%s", tstr));
		return caplen;
	}

	return caphdr_len + FUNC2(ndo, p + caphdr_len,
	    length - caphdr_len, caplen - caphdr_len, 0, 0);
}
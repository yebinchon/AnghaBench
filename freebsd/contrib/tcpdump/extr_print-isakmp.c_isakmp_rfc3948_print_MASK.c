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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int FUNC2 (int /*<<< orphan*/ *,int const*,int,int const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int,int,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int,int const*) ; 

void
FUNC5(netdissect_options *ndo,
		     const u_char *bp, u_int length,
		     const u_char *bp2)
{
	FUNC1(bp[0]);
	if(length == 1 && bp[0]==0xff) {
		FUNC0((ndo, "isakmp-nat-keep-alive"));
		return;
	}

	if(length < 4) {
		goto trunc;
	}
	FUNC1(bp[3]);

	/*
	 * see if this is an IKE packet
	 */
	if(bp[0]==0 && bp[1]==0 && bp[2]==0 && bp[3]==0) {
		FUNC0((ndo, "NONESP-encap: "));
		FUNC4(ndo, bp+4, length-4, bp2);
		return;
	}

	/* must be an ESP packet */
	{
		int nh, enh, padlen;
		int advance;

		FUNC0((ndo, "UDP-encap: "));

		advance = FUNC2(ndo, bp, length, bp2, &enh, &padlen);
		if(advance <= 0)
			return;

		bp += advance;
		length -= advance + padlen;
		nh = enh & 0xff;

		FUNC3(ndo, bp, length, nh, bp2);
		return;
	}

trunc:
	FUNC0((ndo,"[|isakmp]"));
	return;
}
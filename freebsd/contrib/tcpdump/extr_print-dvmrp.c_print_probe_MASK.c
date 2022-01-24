#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int const*) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
            register const u_char *bp, register const u_char *ep,
            register u_int len)
{
	register uint32_t genid;

	FUNC1(bp[0], 4);
	if ((len < 4) || ((bp + 4) > ep)) {
		/* { (ctags) */
		FUNC0((ndo, " [|}"));
		return (0);
	}
	genid = (bp[0] << 24) | (bp[1] << 16) | (bp[2] << 8) | bp[3];
	bp += 4;
	len -= 4;
	FUNC0((ndo, ndo->ndo_vflag > 1 ? "\n\t" : " "));
	FUNC0((ndo, "genid %u", genid));
	if (ndo->ndo_vflag < 2)
		return (0);

	while ((len > 0) && (bp < ep)) {
		FUNC1(bp[0], 4);
		FUNC0((ndo, "\n\tneighbor %s", FUNC2(ndo, bp)));
		bp += 4; len -= 4;
	}
	return (0);
trunc:
	return (-1);
}
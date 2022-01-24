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
typedef  int u_int ;
typedef  int u_char ;
struct lladdr_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  (* addr_string ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(netdissect_options *ndo, const u_char *bp, u_int length, const struct lladdr_info *src)
{
	int srcNwref;
	int dstNwref;

	FUNC2(*bp, 2);
	if (length < 2)
		goto trunc;
	srcNwref = bp[0];
	dstNwref = bp[1];
	length -= 2;
	bp += 2;

	FUNC1((ndo, "CALM FAST"));
	if (src != NULL)
		FUNC1((ndo, " src:%s", (src->addr_string)(ndo, src->addr)));
	FUNC1((ndo, "; "));
	FUNC1((ndo, "SrcNwref:%d; ", srcNwref));
	FUNC1((ndo, "DstNwref:%d; ", dstNwref));

	if (ndo->ndo_vflag)
		FUNC0(bp, length);
	return;

trunc:
	FUNC1((ndo, "[|calm fast]"));
	return;
}
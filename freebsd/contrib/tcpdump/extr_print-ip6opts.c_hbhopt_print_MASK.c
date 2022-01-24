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
typedef  int /*<<< orphan*/  u_char ;
struct ip6_hbh {int ip6h_len; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_hbh const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

int
FUNC4(netdissect_options *ndo, register const u_char *bp)
{
    const struct ip6_hbh *dp = (const struct ip6_hbh *)bp;
    int hbhlen = 0;

    FUNC1(dp->ip6h_len);
    hbhlen = (int)((dp->ip6h_len + 1) << 3);
    FUNC2(*dp, hbhlen);
    FUNC0((ndo, "HBH "));
    if (ndo->ndo_vflag)
	FUNC3(ndo, (const u_char *)dp + sizeof(*dp), hbhlen - sizeof(*dp));

    return(hbhlen);

  trunc:
    FUNC0((ndo, "[|HBH]"));
    return(-1);
}
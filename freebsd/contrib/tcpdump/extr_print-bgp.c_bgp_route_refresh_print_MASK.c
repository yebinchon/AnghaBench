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
struct bgp_route_refresh {int /*<<< orphan*/  safi; int /*<<< orphan*/  afi; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int BGP_ROUTE_REFRESH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  af_values ; 
 int /*<<< orphan*/  bgp_safi_values ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                        const u_char *pptr, int len)
{
        const struct bgp_route_refresh *bgp_route_refresh_header;

	FUNC2(pptr[0], BGP_ROUTE_REFRESH_SIZE);

        /* some little sanity checking */
        if (len<BGP_ROUTE_REFRESH_SIZE)
            return;

        bgp_route_refresh_header = (const struct bgp_route_refresh *)pptr;

        FUNC1((ndo, "\n\t  AFI %s (%u), SAFI %s (%u)",
               FUNC4(af_values,"Unknown",
			  /* this stinks but the compiler pads the structure
			   * weird */
			  FUNC0(&bgp_route_refresh_header->afi)),
               FUNC0(&bgp_route_refresh_header->afi),
               FUNC4(bgp_safi_values,"Unknown",
			  bgp_route_refresh_header->safi),
               bgp_route_refresh_header->safi));

        if (ndo->ndo_vflag > 1) {
            FUNC2(*pptr, len);
            FUNC3(ndo, pptr, "\n\t  ", len);
        }

        return;
trunc:
	FUNC1((ndo, "[|BGP]"));
}
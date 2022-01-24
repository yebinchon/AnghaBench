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
typedef  int /*<<< orphan*/  u_char ;
struct bgp {int bgp_type; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  BGP_KEEPALIVE 132 
#define  BGP_NOTIFICATION 131 
#define  BGP_OPEN 130 
#define  BGP_ROUTE_REFRESH 129 
 int BGP_SIZE ; 
#define  BGP_UPDATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  bgp_msg_values ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bgp*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
                 const u_char *dat, int length)
{
	struct bgp bgp;

	FUNC1(dat[0], BGP_SIZE);
	FUNC6(&bgp, dat, BGP_SIZE);
	FUNC0((ndo, "\n\t%s Message (%u), length: %u",
               FUNC8(bgp_msg_values, "Unknown", bgp.bgp_type),
               bgp.bgp_type,
               length));

	switch (bgp.bgp_type) {
	case BGP_OPEN:
		FUNC3(ndo, dat, length);
		break;
	case BGP_UPDATE:
		FUNC5(ndo, dat, length);
		break;
	case BGP_NOTIFICATION:
		FUNC2(ndo, dat, length);
		break;
        case BGP_KEEPALIVE:
                break;
        case BGP_ROUTE_REFRESH:
                FUNC4(ndo, dat, length);
                break;
        default:
                /* we have no decoder for the BGP message */
                FUNC1(*dat, length);
                FUNC0((ndo, "\n\t  no Message %u decoder", bgp.bgp_type));
                FUNC7(ndo, dat, "\n\t  ", length);
                break;
	}
	return 1;
trunc:
	FUNC0((ndo, "[|BGP]"));
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct rip_netinfo {int dummy; } ;
struct rip {int rip_vers; int /*<<< orphan*/  rip_cmd; } ;
struct TYPE_7__ {int ndo_vflag; int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  RIPCMD_POLL 133 
#define  RIPCMD_POLLENTRY 132 
#define  RIPCMD_REQUEST 131 
#define  RIPCMD_RESPONSE 130 
#define  RIPCMD_TRACEOFF 129 
#define  RIPCMD_TRACEON 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  rip_cmd_values ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct rip_netinfo const*) ; 
 int FUNC3 (TYPE_1__*,struct rip_netinfo const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo,
          const u_char *dat, u_int length)
{
	register const struct rip *rp;
	register const struct rip_netinfo *ni;
	register u_int i, j;

	if (ndo->ndo_snapend < dat) {
		FUNC0((ndo, " %s", tstr));
		return;
	}
	i = ndo->ndo_snapend - dat;
	if (i > length)
		i = length;
	if (i < sizeof(*rp)) {
		FUNC0((ndo, " %s", tstr));
		return;
	}
	i -= sizeof(*rp);

	rp = (const struct rip *)dat;

	FUNC0((ndo, "%sRIPv%u",
               (ndo->ndo_vflag >= 1) ? "\n\t" : "",
               rp->rip_vers));

	switch (rp->rip_vers) {
	case 0:
		/*
		 * RFC 1058.
		 *
		 * XXX - RFC 1058 says
		 *
		 * 0  Datagrams whose version number is zero are to be ignored.
		 *    These are from a previous version of the protocol, whose
		 *    packet format was machine-specific.
		 *
		 * so perhaps we should just dump the packet, in hex.
		 */
                FUNC1(ndo, (const uint8_t *)&rp->rip_cmd, "\n\t", length);
		break;
	default:
                /* dump version and lets see if we know the commands name*/
                FUNC0((ndo, ", %s, length: %u",
                       FUNC4(rip_cmd_values,
                               "unknown command (%u)",
                               rp->rip_cmd),
                       length));

                if (ndo->ndo_vflag < 1)
                    return;

		switch (rp->rip_cmd) {
		case RIPCMD_REQUEST:
		case RIPCMD_RESPONSE:
			j = length / sizeof(*ni);
			FUNC0((ndo, ", routes: %u%s", j, rp->rip_vers == 2 ? " or less" : ""));
			ni = (const struct rip_netinfo *)(rp + 1);
			for (; i >= sizeof(*ni); ++ni) {
				if (rp->rip_vers == 1)
				{
					FUNC2(ndo, ni);
					i -= sizeof(*ni);
				}
				else if (rp->rip_vers == 2)
					i -= FUNC3(ndo, ni, i);
                                else
                                    break;
			}
			if (i)
				FUNC0((ndo, "%s", tstr));
			break;

		case RIPCMD_TRACEOFF:
		case RIPCMD_POLL:
		case RIPCMD_POLLENTRY:
			break;

		case RIPCMD_TRACEON:
                    /* fall through */
	        default:
                    if (ndo->ndo_vflag <= 1) {
                        if(!FUNC1(ndo, (const uint8_t *)rp, "\n\t", length))
                            return;
                    }
                    break;
                }
                /* do we want to see an additionally hexdump ? */
                if (ndo->ndo_vflag> 1) {
                    if(!FUNC1(ndo, (const uint8_t *)rp, "\n\t", length))
                        return;
                }
        }
}
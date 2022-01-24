#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {int /*<<< orphan*/  cb_vers; int /*<<< orphan*/  cb_prog; int /*<<< orphan*/  cb_proc; int /*<<< orphan*/  cb_rpcvers; } ;
struct sunrpc_msg {TYPE_1__ rm_call; int /*<<< orphan*/  rm_xid; } ;
struct ip6_hdr {int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;
typedef  int /*<<< orphan*/  srcid ;
struct TYPE_8__ {int /*<<< orphan*/  ndo_nflag; } ;
typedef  TYPE_2__ netdissect_options ;
typedef  int /*<<< orphan*/  dstid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int SUNRPC_PMAPPORT ; 
#define  SUNRPC_PMAPPROC_CALLIT 131 
#define  SUNRPC_PMAPPROC_GETPORT 130 
#define  SUNRPC_PMAPPROC_SET 129 
#define  SUNRPC_PMAPPROC_UNSET 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc2str ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC9(netdissect_options *ndo, register const u_char *bp,
                    register u_int length, register const u_char *bp2)
{
	register const struct sunrpc_msg *rp;
	register const struct ip *ip;
	register const struct ip6_hdr *ip6;
	uint32_t x;
	char srcid[20], dstid[20];	/*fits 32bit*/

	rp = (const struct sunrpc_msg *)bp;

	if (!ndo->ndo_nflag) {
		FUNC6(srcid, sizeof(srcid), "0x%x",
		    FUNC0(&rp->rm_xid));
		FUNC7(dstid, "sunrpc", sizeof(dstid));
	} else {
		FUNC6(srcid, sizeof(srcid), "0x%x",
		    FUNC0(&rp->rm_xid));
		FUNC6(dstid, sizeof(dstid), "0x%x", SUNRPC_PMAPPORT);
	}

	switch (FUNC1((const struct ip *)bp2)) {
	case 4:
		ip = (const struct ip *)bp2;
		FUNC2((ndo, "%s.%s > %s.%s: %d",
		    FUNC4(ndo, &ip->ip_src), srcid,
		    FUNC4(ndo, &ip->ip_dst), dstid, length));
		break;
	case 6:
		ip6 = (const struct ip6_hdr *)bp2;
		FUNC2((ndo, "%s.%s > %s.%s: %d",
		    FUNC3(ndo, &ip6->ip6_src), srcid,
		    FUNC3(ndo, &ip6->ip6_dst), dstid, length));
		break;
	default:
		FUNC2((ndo, "%s.%s > %s.%s: %d", "?", srcid, "?", dstid, length));
		break;
	}

	FUNC2((ndo, " %s", FUNC8(proc2str, " proc #%u",
	    FUNC0(&rp->rm_call.cb_proc))));
	x = FUNC0(&rp->rm_call.cb_rpcvers);
	if (x != 2)
		FUNC2((ndo, " [rpcver %u]", x));

	switch (FUNC0(&rp->rm_call.cb_proc)) {

	case SUNRPC_PMAPPROC_SET:
	case SUNRPC_PMAPPROC_UNSET:
	case SUNRPC_PMAPPROC_GETPORT:
	case SUNRPC_PMAPPROC_CALLIT:
		x = FUNC0(&rp->rm_call.cb_prog);
		if (!ndo->ndo_nflag)
			FUNC2((ndo, " %s", FUNC5(x)));
		else
			FUNC2((ndo, " %u", x));
		FUNC2((ndo, ".%u", FUNC0(&rp->rm_call.cb_vers)));
		break;
	}
}
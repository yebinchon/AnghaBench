#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct TYPE_5__ {int /*<<< orphan*/  rj_why; TYPE_1__ rj_vers; int /*<<< orphan*/  rj_stat; } ;
struct TYPE_6__ {TYPE_2__ rp_reject; int /*<<< orphan*/  rp_stat; } ;
struct sunrpc_msg {TYPE_3__ rm_reply; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  enum sunrpc_reject_stat { ____Placeholder_sunrpc_reject_stat } sunrpc_reject_stat ;
typedef  enum sunrpc_auth_stat { ____Placeholder_sunrpc_auth_stat } sunrpc_auth_stat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  SUNRPC_AUTH_ERROR 131 
#define  SUNRPC_MSG_ACCEPTED 130 
#define  SUNRPC_MSG_DENIED 129 
#define  SUNRPC_RPC_MISMATCH 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sunrpc_msg const*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr ; 
 int /*<<< orphan*/  sunrpc_auth_str ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC5 (struct sunrpc_msg const*,int /*<<< orphan*/  const*,int*,int*) ; 

void
FUNC6(netdissect_options *ndo,
                      register const u_char *bp, u_int length,
                      register const u_char *bp2)
{
	register const struct sunrpc_msg *rp;
	uint32_t proc, vers, reply_stat;
	enum sunrpc_reject_stat rstat;
	uint32_t rlow;
	uint32_t rhigh;
	enum sunrpc_auth_stat rwhy;

	nfserr = 0;		/* assume no error */
	rp = (const struct sunrpc_msg *)bp;

	FUNC2(rp->rm_reply.rp_stat);
	reply_stat = FUNC0(&rp->rm_reply.rp_stat);
	switch (reply_stat) {

	case SUNRPC_MSG_ACCEPTED:
		FUNC1((ndo, "reply ok %u", length));
		if (FUNC5(rp, bp2, &proc, &vers) >= 0)
			FUNC3(ndo, rp, proc, vers, length);
		break;

	case SUNRPC_MSG_DENIED:
		FUNC1((ndo, "reply ERR %u: ", length));
		FUNC2(rp->rm_reply.rp_reject.rj_stat);
		rstat = FUNC0(&rp->rm_reply.rp_reject.rj_stat);
		switch (rstat) {

		case SUNRPC_RPC_MISMATCH:
			FUNC2(rp->rm_reply.rp_reject.rj_vers.high);
			rlow = FUNC0(&rp->rm_reply.rp_reject.rj_vers.low);
			rhigh = FUNC0(&rp->rm_reply.rp_reject.rj_vers.high);
			FUNC1((ndo, "RPC Version mismatch (%u-%u)", rlow, rhigh));
			break;

		case SUNRPC_AUTH_ERROR:
			FUNC2(rp->rm_reply.rp_reject.rj_why);
			rwhy = FUNC0(&rp->rm_reply.rp_reject.rj_why);
			FUNC1((ndo, "Auth %s", FUNC4(sunrpc_auth_str, "Invalid failure code %u", rwhy)));
			break;

		default:
			FUNC1((ndo, "Unknown reason for rejecting rpc message %u", (unsigned int)rstat));
			break;
		}
		break;

	default:
		FUNC1((ndo, "reply Unknown rpc response code=%u %u", reply_stat, length));
		break;
	}
	return;

trunc:
	if (!nfserr)
		FUNC1((ndo, "%s", tstr));
}
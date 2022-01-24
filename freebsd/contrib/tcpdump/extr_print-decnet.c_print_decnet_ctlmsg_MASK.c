#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sh_flags; } ;
union routehdr {TYPE_1__ rh_short; } ;
struct TYPE_8__ {int /*<<< orphan*/  eh_data; int /*<<< orphan*/  eh_hello; int /*<<< orphan*/  eh_router; int /*<<< orphan*/  eh_blksize; int /*<<< orphan*/  eh_info; int /*<<< orphan*/  eh_src; int /*<<< orphan*/  eh_ueco; int /*<<< orphan*/  eh_eco; int /*<<< orphan*/  eh_vers; int /*<<< orphan*/  rh_hello; int /*<<< orphan*/  rh_priority; int /*<<< orphan*/  rh_blksize; int /*<<< orphan*/  rh_info; int /*<<< orphan*/  rh_src; int /*<<< orphan*/  rh_ueco; int /*<<< orphan*/  rh_eco; int /*<<< orphan*/  rh_vers; int /*<<< orphan*/  r2_src; int /*<<< orphan*/  r1_src; int /*<<< orphan*/  te_data; int /*<<< orphan*/  te_src; int /*<<< orphan*/  ve_fcnval; int /*<<< orphan*/  ve_src; int /*<<< orphan*/  in_hello; int /*<<< orphan*/  in_ueco; int /*<<< orphan*/  in_eco; int /*<<< orphan*/  in_vers; int /*<<< orphan*/  in_blksize; int /*<<< orphan*/  in_info; int /*<<< orphan*/  in_src; } ;
union controlmsg {TYPE_4__ cm_ehello; TYPE_4__ cm_rhello; TYPE_4__ cm_l2rout; TYPE_4__ cm_l1rou; TYPE_4__ cm_test; TYPE_4__ cm_ver; TYPE_4__ cm_init; } ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct verifmsg {int dummy; } ;
struct testmsg {int dummy; } ;
struct rhellomsg {int dummy; } ;
struct l2rout {int dummy; } ;
struct l1rout {int dummy; } ;
struct initmsg {int dummy; } ;
struct ehellomsg {int dummy; } ;
typedef  int /*<<< orphan*/  srcea ;
typedef  int /*<<< orphan*/  rtea ;
typedef  int /*<<< orphan*/  netdissect_options ;
struct TYPE_6__ {int /*<<< orphan*/  dne_nodeaddr; } ;
struct TYPE_7__ {TYPE_2__ dne_remote; } ;
typedef  TYPE_3__ etheraddr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__) ; 
 int RMF_CTLMASK ; 
#define  RMF_EHELLO 134 
#define  RMF_INIT 133 
#define  RMF_L1ROUT 132 
#define  RMF_L2ROUT 131 
#define  RMF_RHELLO 130 
#define  RMF_TEST 129 
#define  RMF_VER 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC13(netdissect_options *ndo,
                    register const union routehdr *rhp, u_int length,
                    u_int caplen)
{
	/* Our caller has already checked for mflags */
	int mflags = FUNC1(rhp->rh_short.sh_flags);
	register const union controlmsg *cmp = (const union controlmsg *)rhp;
	int src, dst, info, blksize, eco, ueco, hello, other, vers;
	etheraddr srcea, rtea;
	int priority;
	const char *rhpx = (const char *)rhp;
	int ret;

	switch (mflags & RMF_CTLMASK) {
	case RMF_INIT:
	    FUNC3((ndo, "init "));
	    if (length < sizeof(struct initmsg))
		goto trunc;
	    FUNC4(cmp->cm_init);
	    src = FUNC0(cmp->cm_init.in_src);
	    info = FUNC1(cmp->cm_init.in_info);
	    blksize = FUNC0(cmp->cm_init.in_blksize);
	    vers = FUNC1(cmp->cm_init.in_vers);
	    eco = FUNC1(cmp->cm_init.in_eco);
	    ueco = FUNC1(cmp->cm_init.in_ueco);
	    hello = FUNC0(cmp->cm_init.in_hello);
	    FUNC12(ndo, info);
	    FUNC3((ndo,
		"src %sblksize %d vers %d eco %d ueco %d hello %d",
			FUNC5(ndo, src), blksize, vers, eco, ueco,
			hello));
	    ret = 1;
	    break;
	case RMF_VER:
	    FUNC3((ndo, "verification "));
	    if (length < sizeof(struct verifmsg))
		goto trunc;
	    FUNC4(cmp->cm_ver);
	    src = FUNC0(cmp->cm_ver.ve_src);
	    other = FUNC1(cmp->cm_ver.ve_fcnval);
	    FUNC3((ndo, "src %s fcnval %o", FUNC5(ndo, src), other));
	    ret = 1;
	    break;
	case RMF_TEST:
	    FUNC3((ndo, "test "));
	    if (length < sizeof(struct testmsg))
		goto trunc;
	    FUNC4(cmp->cm_test);
	    src = FUNC0(cmp->cm_test.te_src);
	    other = FUNC1(cmp->cm_test.te_data);
	    FUNC3((ndo, "src %s data %o", FUNC5(ndo, src), other));
	    ret = 1;
	    break;
	case RMF_L1ROUT:
	    FUNC3((ndo, "lev-1-routing "));
	    if (length < sizeof(struct l1rout))
		goto trunc;
	    FUNC4(cmp->cm_l1rou);
	    src = FUNC0(cmp->cm_l1rou.r1_src);
	    FUNC3((ndo, "src %s ", FUNC5(ndo, src)));
	    ret = FUNC10(ndo, &(rhpx[sizeof(struct l1rout)]),
				length - sizeof(struct l1rout));
	    break;
	case RMF_L2ROUT:
	    FUNC3((ndo, "lev-2-routing "));
	    if (length < sizeof(struct l2rout))
		goto trunc;
	    FUNC4(cmp->cm_l2rout);
	    src = FUNC0(cmp->cm_l2rout.r2_src);
	    FUNC3((ndo, "src %s ", FUNC5(ndo, src)));
	    ret = FUNC11(ndo, &(rhpx[sizeof(struct l2rout)]),
				length - sizeof(struct l2rout));
	    break;
	case RMF_RHELLO:
	    FUNC3((ndo, "router-hello "));
	    if (length < sizeof(struct rhellomsg))
		goto trunc;
	    FUNC4(cmp->cm_rhello);
	    vers = FUNC1(cmp->cm_rhello.rh_vers);
	    eco = FUNC1(cmp->cm_rhello.rh_eco);
	    ueco = FUNC1(cmp->cm_rhello.rh_ueco);
	    FUNC6((char *)&srcea, (const char *)&(cmp->cm_rhello.rh_src),
		sizeof(srcea));
	    src = FUNC0(srcea.dne_remote.dne_nodeaddr);
	    info = FUNC1(cmp->cm_rhello.rh_info);
	    blksize = FUNC0(cmp->cm_rhello.rh_blksize);
	    priority = FUNC1(cmp->cm_rhello.rh_priority);
	    hello = FUNC0(cmp->cm_rhello.rh_hello);
	    FUNC9(ndo, info);
	    FUNC3((ndo,
	    "vers %d eco %d ueco %d src %s blksize %d pri %d hello %d",
			vers, eco, ueco, FUNC5(ndo, src),
			blksize, priority, hello));
	    ret = FUNC8(&(rhpx[sizeof(struct rhellomsg)]),
				length - sizeof(struct rhellomsg));
	    break;
	case RMF_EHELLO:
	    FUNC3((ndo, "endnode-hello "));
	    if (length < sizeof(struct ehellomsg))
		goto trunc;
	    FUNC4(cmp->cm_ehello);
	    vers = FUNC1(cmp->cm_ehello.eh_vers);
	    eco = FUNC1(cmp->cm_ehello.eh_eco);
	    ueco = FUNC1(cmp->cm_ehello.eh_ueco);
	    FUNC6((char *)&srcea, (const char *)&(cmp->cm_ehello.eh_src),
		sizeof(srcea));
	    src = FUNC0(srcea.dne_remote.dne_nodeaddr);
	    info = FUNC1(cmp->cm_ehello.eh_info);
	    blksize = FUNC0(cmp->cm_ehello.eh_blksize);
	    /*seed*/
	    FUNC6((char *)&rtea, (const char *)&(cmp->cm_ehello.eh_router),
		sizeof(rtea));
	    dst = FUNC0(rtea.dne_remote.dne_nodeaddr);
	    hello = FUNC0(cmp->cm_ehello.eh_hello);
	    other = FUNC1(cmp->cm_ehello.eh_data);
	    FUNC9(ndo, info);
	    FUNC3((ndo,
	"vers %d eco %d ueco %d src %s blksize %d rtr %s hello %d data %o",
			vers, eco, ueco, FUNC5(ndo, src),
			blksize, FUNC5(ndo, dst), hello, other));
	    ret = 1;
	    break;

	default:
	    FUNC3((ndo, "unknown control message"));
	    FUNC2((const u_char *)rhp, FUNC7(length, caplen));
	    ret = 1;
	    break;
	}
	return (ret);

trunc:
	return (0);
}
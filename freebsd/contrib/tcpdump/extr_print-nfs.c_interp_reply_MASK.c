#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sunrpc_msg {int dummy; } ;
struct TYPE_19__ {int ndo_vflag; int /*<<< orphan*/  ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 
#define  NFSPROC_ACCESS 148 
#define  NFSPROC_COMMIT 147 
#define  NFSPROC_CREATE 146 
#define  NFSPROC_FSINFO 145 
#define  NFSPROC_FSSTAT 144 
#define  NFSPROC_GETATTR 143 
#define  NFSPROC_LINK 142 
#define  NFSPROC_LOOKUP 141 
#define  NFSPROC_MKDIR 140 
#define  NFSPROC_MKNOD 139 
#define  NFSPROC_PATHCONF 138 
#define  NFSPROC_READ 137 
#define  NFSPROC_READDIR 136 
#define  NFSPROC_READDIRPLUS 135 
#define  NFSPROC_READLINK 134 
#define  NFSPROC_REMOVE 133 
#define  NFSPROC_RENAME 132 
#define  NFSPROC_RMDIR 131 
#define  NFSPROC_SETATTR 130 
#define  NFSPROC_SYMLINK 129 
#define  NFSPROC_WRITE 128 
 scalar_t__ NFS_NPROCS ; 
 scalar_t__ NFS_VER3 ; 
 int /*<<< orphan*/  nfserr ; 
 int /*<<< orphan*/  nfsproc_str ; 
 scalar_t__* nfsv3_procid ; 
 int /*<<< orphan*/  nfsv3_writemodes ; 
 scalar_t__* FUNC3 (TYPE_1__*,scalar_t__ const*,int) ; 
 scalar_t__* FUNC4 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__ const*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__ const*) ; 
 scalar_t__* FUNC8 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__ const*) ; 
 scalar_t__* FUNC13 (TYPE_1__*,struct sunrpc_msg const*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__ const*,int) ; 
 scalar_t__* FUNC15 (TYPE_1__*,scalar_t__ const*,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC19(netdissect_options *ndo,
             const struct sunrpc_msg *rp, uint32_t proc, uint32_t vers, int length)
{
	register const uint32_t *dp;
	register int v3;
	int er;

	v3 = (vers == NFS_VER3);

	if (!v3 && proc < NFS_NPROCS)
		proc = nfsv3_procid[proc];

	FUNC1((ndo, " %s", FUNC18(nfsproc_str, "proc-%u", proc)));
	switch (proc) {

	case NFSPROC_GETATTR:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC5(ndo, dp, !ndo->ndo_qflag, v3) != 0)
			return;
		break;

	case NFSPROC_SETATTR:
		if (!(dp = FUNC13(ndo, rp, length)))
			return;
		if (v3) {
			if (FUNC17(ndo, dp, ndo->ndo_vflag))
				return;
		} else {
			if (FUNC5(ndo, dp, !ndo->ndo_qflag, 0) != 0)
				return;
		}
		break;

	case NFSPROC_LOOKUP:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (!(dp = FUNC15(ndo, dp, &er)))
				break;
			if (er) {
				if (ndo->ndo_vflag > 1) {
					FUNC1((ndo, " post dattr:"));
					dp = FUNC3(ndo, dp, ndo->ndo_vflag);
				}
			} else {
				if (!(dp = FUNC8(ndo, dp, v3)))
					break;
				if ((dp = FUNC3(ndo, dp, ndo->ndo_vflag)) &&
				    ndo->ndo_vflag > 1) {
					FUNC1((ndo, " post dattr:"));
					dp = FUNC3(ndo, dp, ndo->ndo_vflag);
				}
			}
			if (dp)
				return;
		} else {
			if (FUNC7(ndo, dp) != 0)
				return;
		}
		break;

	case NFSPROC_ACCESS:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (!(dp = FUNC15(ndo, dp, &er)))
			break;
		if (ndo->ndo_vflag)
			FUNC1((ndo, " attr:"));
		if (!(dp = FUNC3(ndo, dp, ndo->ndo_vflag)))
			break;
		if (!er) {
			FUNC2(dp[0]);
			FUNC1((ndo, " c %04x", FUNC0(&dp[0])));
		}
		return;

	case NFSPROC_READLINK:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC10(ndo, dp, v3) != 0)
			return;
		break;

	case NFSPROC_READ:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (!(dp = FUNC15(ndo, dp, &er)))
				break;
			if (!(dp = FUNC3(ndo, dp, ndo->ndo_vflag)))
				break;
			if (er)
				return;
			if (ndo->ndo_vflag) {
				FUNC2(dp[1]);
				FUNC1((ndo, " %u bytes", FUNC0(&dp[0])));
				if (FUNC0(&dp[1]))
					FUNC1((ndo, " EOF"));
			}
			return;
		} else {
			if (FUNC5(ndo, dp, ndo->ndo_vflag, 0) != 0)
				return;
		}
		break;

	case NFSPROC_WRITE:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (!(dp = FUNC15(ndo, dp, &er)))
				break;
			if (!(dp = FUNC4(ndo, dp, ndo->ndo_vflag)))
				break;
			if (er)
				return;
			if (ndo->ndo_vflag) {
				FUNC2(dp[0]);
				FUNC1((ndo, " %u bytes", FUNC0(&dp[0])));
				if (ndo->ndo_vflag > 1) {
					FUNC2(dp[1]);
					FUNC1((ndo, " <%s>",
						FUNC18(nfsv3_writemodes,
							NULL, FUNC0(&dp[1]))));
				}
				return;
			}
		} else {
			if (FUNC5(ndo, dp, ndo->ndo_vflag, v3) != 0)
				return;
		}
		break;

	case NFSPROC_CREATE:
	case NFSPROC_MKDIR:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (FUNC6(ndo, dp, ndo->ndo_vflag) != NULL)
				return;
		} else {
			if (FUNC7(ndo, dp) != 0)
				return;
		}
		break;

	case NFSPROC_SYMLINK:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (FUNC6(ndo, dp, ndo->ndo_vflag) != NULL)
				return;
		} else {
			if (FUNC15(ndo, dp, &er) != NULL)
				return;
		}
		break;

	case NFSPROC_MKNOD:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (FUNC6(ndo, dp, ndo->ndo_vflag) != NULL)
			return;
		break;

	case NFSPROC_REMOVE:
	case NFSPROC_RMDIR:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (FUNC17(ndo, dp, ndo->ndo_vflag))
				return;
		} else {
			if (FUNC15(ndo, dp, &er) != NULL)
				return;
		}
		break;

	case NFSPROC_RENAME:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (!(dp = FUNC15(ndo, dp, &er)))
				break;
			if (ndo->ndo_vflag) {
				FUNC1((ndo, " from:"));
				if (!(dp = FUNC4(ndo, dp, ndo->ndo_vflag)))
					break;
				FUNC1((ndo, " to:"));
				if (!(dp = FUNC4(ndo, dp, ndo->ndo_vflag)))
					break;
			}
			return;
		} else {
			if (FUNC15(ndo, dp, &er) != NULL)
				return;
		}
		break;

	case NFSPROC_LINK:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (!(dp = FUNC15(ndo, dp, &er)))
				break;
			if (ndo->ndo_vflag) {
				FUNC1((ndo, " file POST:"));
				if (!(dp = FUNC3(ndo, dp, ndo->ndo_vflag)))
					break;
				FUNC1((ndo, " dir:"));
				if (!(dp = FUNC4(ndo, dp, ndo->ndo_vflag)))
					break;
				return;
			}
		} else {
			if (FUNC15(ndo, dp, &er) != NULL)
				return;
		}
		break;

	case NFSPROC_READDIR:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (v3) {
			if (FUNC16(ndo, dp, ndo->ndo_vflag))
				return;
		} else {
			if (FUNC12(ndo, dp) != 0)
				return;
		}
		break;

	case NFSPROC_READDIRPLUS:
		if (!(dp = FUNC13(ndo, rp, length)))
			break;
		if (FUNC16(ndo, dp, ndo->ndo_vflag))
			return;
		break;

	case NFSPROC_FSSTAT:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC14(ndo, dp, v3) != 0)
			return;
		break;

	case NFSPROC_FSINFO:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC9(ndo, dp) != 0)
			return;
		break;

	case NFSPROC_PATHCONF:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC11(ndo, dp) != 0)
			return;
		break;

	case NFSPROC_COMMIT:
		dp = FUNC13(ndo, rp, length);
		if (dp != NULL && FUNC17(ndo, dp, ndo->ndo_vflag) != 0)
			return;
		break;

	default:
		return;
	}
trunc:
	if (!nfserr)
		FUNC1((ndo, "%s", tstr));
}
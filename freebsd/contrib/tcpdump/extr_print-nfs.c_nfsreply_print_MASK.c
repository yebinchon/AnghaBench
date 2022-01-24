#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sunrpc_msg {int /*<<< orphan*/  rm_xid; } ;
typedef  int /*<<< orphan*/  srcid ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  dstid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NFS_PORT ; 
 scalar_t__ nfserr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC7(netdissect_options *ndo,
               register const u_char *bp, u_int length,
               register const u_char *bp2)
{
	register const struct sunrpc_msg *rp;
	char srcid[20], dstid[20];	/*fits 32bit*/

	nfserr = 0;		/* assume no error */
	rp = (const struct sunrpc_msg *)bp;

	FUNC2(rp->rm_xid);
	if (!ndo->ndo_nflag) {
		FUNC6(srcid, "nfs", sizeof(srcid));
		FUNC5(dstid, sizeof(dstid), "%u",
		    FUNC0(&rp->rm_xid));
	} else {
		FUNC5(srcid, sizeof(srcid), "%u", NFS_PORT);
		FUNC5(dstid, sizeof(dstid), "%u",
		    FUNC0(&rp->rm_xid));
	}
	FUNC4(ndo, bp2, srcid, dstid);

	FUNC3(ndo, bp, length, bp2);
	return;

trunc:
	if (!nfserr)
		FUNC1((ndo, "%s", tstr));
}
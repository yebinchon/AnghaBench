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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pathdata_h {int /*<<< orphan*/  pIDcnt; int /*<<< orphan*/  pflags; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int B_APPND ; 
 int B_KEYIN ; 
 int B_TRNG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int F_SELKEY ; 
 int F_SELTABRANGE ; 
 int F_TABAPPEND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pathdata_h const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo,
            register const u_char * pptr, register u_int len,
            uint16_t op_msk, int indent)
{
	const struct pathdata_h *pdh = (const struct pathdata_h *)pptr;
	char *ib = FUNC4(indent, 0);
	u_int minsize = 0;
	int more_pd = 0;
	uint16_t idcnt = 0;

	FUNC2(*pdh);
	if (len < sizeof(struct pathdata_h))
		goto trunc;
	if (ndo->ndo_vflag >= 3) {
		FUNC1((ndo, "\n%sPathdata: Flags 0x%x ID count %d\n",
		       ib, FUNC0(&pdh->pflags), FUNC0(&pdh->pIDcnt)));
	}

	if (FUNC0(&pdh->pflags) & F_SELKEY) {
		op_msk |= B_KEYIN;
	}

	/* Table GET Range operation */
	if (FUNC0(&pdh->pflags) & F_SELTABRANGE) {
		op_msk |= B_TRNG;
	}
	/* Table SET append operation */
	if (FUNC0(&pdh->pflags) & F_TABAPPEND) {
		op_msk |= B_APPND;
	}

	pptr += sizeof(struct pathdata_h);
	len -= sizeof(struct pathdata_h);
	idcnt = FUNC0(&pdh->pIDcnt);
	minsize = idcnt * 4;
	if (len < minsize) {
		FUNC1((ndo, "\t\t\ttruncated IDs expected %uB got %uB\n", minsize,
		       len));
		FUNC3(ndo, "\t\t\tID Data[", pptr, len, 0);
		FUNC1((ndo, "]\n"));
		return -1;
	}

	if ((op_msk & B_TRNG) && (op_msk & B_KEYIN)) {
		FUNC1((ndo, "\t\t\tIllegal to have both Table ranges and keys\n"));
		return -1;
	}

	more_pd = FUNC5(ndo, pptr, len, idcnt, op_msk, indent);
	if (more_pd > 0) {
		int consumed = len - more_pd;
		pptr += consumed;
		len = more_pd;
		/* XXX: Argh, recurse some more */
		return FUNC6(ndo, pptr, len, op_msk, indent+1);
	} else
		return 0;

trunc:
	FUNC1((ndo, "%s", tstr));
	return -1;
}
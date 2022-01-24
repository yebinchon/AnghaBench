#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int32 ;
struct parse {TYPE_1__* argval; int /*<<< orphan*/  nargs; } ;
struct info_clock {scalar_t__ type; int lastevent; int currentstatus; int flags; scalar_t__ fudgeval2; scalar_t__ fudgeval1; int /*<<< orphan*/  fudgetime2; int /*<<< orphan*/  fudgetime1; scalar_t__ timestarted; scalar_t__ baddata; scalar_t__ badformat; scalar_t__ noresponse; scalar_t__ polls; int /*<<< orphan*/  clockadr; } ;
struct clktype {scalar_t__ code; char* clocktype; } ;
typedef  int /*<<< orphan*/  l_fp ;
struct TYPE_2__ {int /*<<< orphan*/  netnum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  MAXARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REQ_GET_CLOCKINFO ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 struct clktype* clktypes ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,char*,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ impl_ver ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_clock *cl;
	/* 8 is the maximum number of clocks which will fit in a packet */
	u_long clist[FUNC8(MAXARGS, 8)];
	size_t qitemlim;
	size_t qitems;
	size_t items;
	size_t itemsize;
	int res;
	l_fp ts;
	struct clktype *clk;

	qitemlim = FUNC8(pcmd->nargs, FUNC0(clist));
	for (qitems = 0; qitems < qitemlim; qitems++)
		clist[qitems] = FUNC1(&pcmd->argval[qitems].netnum);

again:
	res = FUNC5(impl_ver, REQ_GET_CLOCKINFO, 0, qitems,
		      sizeof(u_int32), (char *)clist, &items,
		      &itemsize, (void *)&cl, 0, sizeof(struct info_clock));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
		return;

	if (!FUNC3(items, fp))
		return;

	if (!FUNC4(itemsize, sizeof(struct info_clock)))
		return;

	while (items-- > 0) {
		(void) FUNC6(fp, "clock address:        %s\n",
			       FUNC10(cl->clockadr));
		for (clk = clktypes; clk->code >= 0; clk++)
		    if (clk->code == cl->type)
			break;
		if (clk->code >= 0)
		    (void) FUNC6(fp, "clock type:           %s\n",
				   clk->clocktype);
		else
		    (void) FUNC6(fp, "clock type:           unknown type (%d)\n",
				   cl->type);
		(void) FUNC6(fp, "last event:           %d\n",
			       cl->lastevent);
		(void) FUNC6(fp, "current status:       %d\n",
			       cl->currentstatus);
		(void) FUNC6(fp, "number of polls:      %lu\n",
			       (u_long)FUNC9(cl->polls));
		(void) FUNC6(fp, "no response to poll:  %lu\n",
			       (u_long)FUNC9(cl->noresponse));
		(void) FUNC6(fp, "bad format responses: %lu\n",
			       (u_long)FUNC9(cl->badformat));
		(void) FUNC6(fp, "bad data responses:   %lu\n",
			       (u_long)FUNC9(cl->baddata));
		(void) FUNC6(fp, "running time:         %lu\n",
			       (u_long)FUNC9(cl->timestarted));
		FUNC2(&cl->fudgetime1, &ts);
		(void) FUNC6(fp, "fudge time 1:         %s\n",
			       FUNC7(&ts, 6));
		FUNC2(&cl->fudgetime2, &ts);
		(void) FUNC6(fp, "fudge time 2:         %s\n",
			       FUNC7(&ts, 6));
		(void) FUNC6(fp, "stratum:              %ld\n",
			       (u_long)FUNC9(cl->fudgeval1));
		/* [Bug3527] Backward Incompatible: cl->fudgeval2 is
		 * a string, instantiated via memcpy() so there is no
		 * endian issue to correct.
		 */
#ifdef DISABLE_BUG3527_FIX
		(void) fprintf(fp, "reference ID:         %s\n",
			       refid_string(ntohl(cl->fudgeval2), 0));
#else
		(void) FUNC6(fp, "reference ID:         %s\n",
			       FUNC11(cl->fudgeval2, 0));
#endif
		(void) FUNC6(fp, "fudge flags:          0x%x\n",
			       cl->flags);

		if (items > 0)
		    (void) FUNC6(fp, "\n");
		cl++;
	}
}
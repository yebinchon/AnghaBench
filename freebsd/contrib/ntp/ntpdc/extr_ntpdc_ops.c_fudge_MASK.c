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
typedef  int u_long ;
typedef  long u_int32 ;
struct parse {TYPE_1__* argval; } ;
struct conf_fudge {void* fudgeval_flags; void* which; int /*<<< orphan*/  fudgetime; int /*<<< orphan*/  clockadr; } ;
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  dummy ;
struct TYPE_2__ {char* string; int /*<<< orphan*/  netnum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 long FUDGE_FLAGS ; 
 long FUDGE_TIME1 ; 
 long FUDGE_TIME2 ; 
 long FUDGE_VAL1 ; 
 long FUDGE_VAL2 ; 
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REQ_SET_CLKFUDGE ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct conf_fudge) ; 
 int /*<<< orphan*/  FUNC4 (char*,long*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int,int,char*,size_t*,size_t*,char const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int*) ; 
 void* FUNC9 (long) ; 
 scalar_t__ impl_ver ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC10(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct conf_fudge fudgedata;
	size_t items;
	size_t itemsize;
	const char *dummy;
	l_fp ts;
	int res;
	long val;
	u_long u_val;
	int err;


	err = 0;
	FUNC3(fudgedata);
	fudgedata.clockadr = FUNC0(&pcmd->argval[0].netnum);

	if (FUNC2(pcmd->argval[1].string, "time1")) {
		fudgedata.which = FUNC9(FUDGE_TIME1);
		if (!FUNC5(pcmd->argval[2].string, &ts))
		    err = 1;
		else
		    FUNC1(&ts, &fudgedata.fudgetime);
	} else if (FUNC2(pcmd->argval[1].string, "time2")) {
		fudgedata.which = FUNC9(FUDGE_TIME2);
		if (!FUNC5(pcmd->argval[2].string, &ts))
		    err = 1;
		else
		    FUNC1(&ts, &fudgedata.fudgetime);
	} else if (FUNC2(pcmd->argval[1].string, "val1")) {
		fudgedata.which = FUNC9(FUDGE_VAL1);
		if (!FUNC4(pcmd->argval[2].string, &val))
		    err = 1;
		else
		    fudgedata.fudgeval_flags = FUNC9(val);
	} else if (FUNC2(pcmd->argval[1].string, "val2")) {
		fudgedata.which = FUNC9(FUDGE_VAL2);
		if (!FUNC4(pcmd->argval[2].string, &val))
		    err = 1;
		else
		    fudgedata.fudgeval_flags = FUNC9((u_int32)val);
	} else if (FUNC2(pcmd->argval[1].string, "flags")) {
		fudgedata.which = FUNC9(FUDGE_FLAGS);
		if (!FUNC8(pcmd->argval[2].string, &u_val))
		    err = 1;
		else
		    fudgedata.fudgeval_flags = FUNC9((u_int32)(u_val & 0xf));
	} else {
		(void) FUNC7(&stderr, "What fudge is %s?\n",
			       pcmd->argval[1].string);
		return;
	}

	if (err) {
		(void) FUNC7(&stderr, "Unknown fudge parameter %s\n",
			       pcmd->argval[2].string);
		return;
	}

again:
	res = FUNC6(impl_ver, REQ_SET_CLKFUDGE, 1, 1,
		      sizeof(struct conf_fudge), (char *)&fudgedata, &items,
		      &itemsize, &dummy, 0, sizeof(dummy));

	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res == 0)
	    (void) FUNC7(fp, "done!\n");
	return;
}
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
typedef  int /*<<< orphan*/  u_short ;
struct parse {char* keyword; TYPE_1__* argval; } ;
struct TYPE_2__ {char* string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_CONFIGURE ; 
 int debug ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ *,size_t*,char const**) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static void 
FUNC10 (
	struct parse *pcmd,
	FILE *fp
	)
{
	const char *cfgcmd;
	u_short rstatus;
	size_t rsize;
	const char *rdata;
	char *resp;
	int res;
	int col;
	int i;

	cfgcmd = pcmd->argval[0].string;

	if (debug > 2)
		FUNC2(stderr, 
			"In Config\n"
			"Keyword = %s\n"
			"Command = %s\n", pcmd->keyword, cfgcmd);

	res = FUNC0(CTL_OP_CONFIGURE, 0, 1,
		      FUNC9(cfgcmd), cfgcmd,
		      &rstatus, &rsize, &rdata);

	if (res != 0)
		return;

	if (rsize > 0 && '\n' == rdata[rsize - 1])
		rsize--;

	resp = FUNC1(rsize + 1);
	FUNC6(resp, rdata, rsize);
	resp[rsize] = '\0';

	col = -1;
	if (1 == FUNC8(resp, "column %d syntax error", &col)
	    && col >= 0 && (size_t)col <= FUNC9(cfgcmd) + 1) {
		if (interactive)
			FUNC4("             *", stdout); /* "ntpq> :config " */
		else
			FUNC7("%s\n", cfgcmd);
		for (i = 0; i < col; i++)
			FUNC3('_', stdout);
		FUNC4("^\n", stdout);
	}
	FUNC7("%s\n", resp);
	FUNC5(resp);
}
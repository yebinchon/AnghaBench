#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xi ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  tbuf ;
struct TYPE_5__ {scalar_t__ limit; int type; scalar_t__ tflags; scalar_t__ vmask; char* algoname; scalar_t__ flags; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ IPFW_TABLE_ADDR ; 
 scalar_t__ IPFW_TGFLAGS_LOCKED ; 
 scalar_t__ IPFW_VTYPE_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_ALGO 134 
#define  TOK_LIMIT 133 
#define  TOK_LOCK 132 
#define  TOK_MISSING 131 
#define  TOK_ORFLUSH 130 
#define  TOK_TYPE 129 
#define  TOK_VALTYPE 128 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char**,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC16 (int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  tablenewcmds ; 
 int /*<<< orphan*/  tabletypes ; 
 int /*<<< orphan*/  tablevaltypes ; 

__attribute__((used)) static void
FUNC17(ipfw_obj_header *oh, int ac, char *av[])
{
	ipfw_xtable_info xi, xie;
	int error, missing, orflush, tcmd, val;
	uint32_t fset, fclear;
	char *e, *p;
	char tbuf[128];

	missing = orflush = 0;
	FUNC7(&xi, 0, sizeof(xi));
	while (ac > 0) {
		tcmd = FUNC5(tablenewcmds, *av, "option");
		ac--; av++;

		switch (tcmd) {
		case TOK_LIMIT:
			FUNC0("limit value required");
			xi.limit = FUNC12(*av, NULL, 10);
			ac--; av++;
			break;
		case TOK_TYPE:
			FUNC0("table type required");
			/* Type may have suboptions after ':' */
			if ((p = FUNC8(*av, ':')) != NULL)
				*p++ = '\0';
			val = FUNC6(tabletypes, *av);
			if (val == -1) {
				FUNC1(tbuf, sizeof(tbuf), tabletypes,
				    ", ");
				FUNC3(EX_USAGE,
				    "Unknown tabletype: %s. Supported: %s",
				    *av, tbuf);
			}
			xi.type = val;
			if (p != NULL) {
				error = FUNC16(val, p, &xi.tflags);
				if (error != 0)
					FUNC3(EX_USAGE,
					    "Unsupported suboptions: %s", p);
			}
			ac--; av++;
			break;
		case TOK_VALTYPE:
			FUNC0("table value type required");
			fset = fclear = 0;
			val = FUNC4(tablevaltypes, *av, &e, &fset, &fclear);
			if (val != -1) {
				xi.vmask = fset;
				ac--; av++;
				break;
			}
			FUNC1(tbuf, sizeof(tbuf), tablevaltypes, ", ");
			FUNC3(EX_USAGE, "Unknown value type: %s. Supported: %s",
			    e, tbuf);
			break;
		case TOK_ALGO:
			FUNC0("table algorithm name required");
			if (FUNC11(*av) > sizeof(xi.algoname))
				FUNC3(EX_USAGE, "algorithm name too long");
			FUNC10(xi.algoname, *av, sizeof(xi.algoname));
			ac--; av++;
			break;
		case TOK_LOCK:
			xi.flags |= IPFW_TGFLAGS_LOCKED;
			break;
		case TOK_ORFLUSH:
			orflush = 1;
			/* FALLTHROUGH */
		case TOK_MISSING:
			missing = 1;
			break;
		}
	}

	/* Set some defaults to preserve compatibility. */
	if (xi.algoname[0] == '\0' && xi.type == 0)
		xi.type = IPFW_TABLE_ADDR;
	if (xi.vmask == 0)
		xi.vmask = IPFW_VTYPE_LEGACY;

	error = FUNC13(oh, &xi);

	if (error == 0)
		return;

	if (errno != EEXIST || missing == 0)
		FUNC2(EX_OSERR, "Table creation failed");

	/* Check that existing table is the same we are trying to create */
	if (FUNC15(oh, &xie) != 0)
		FUNC2(EX_OSERR, "Existing table check failed");

	if (xi.limit != xie.limit || xi.type != xie.type ||
	    xi.tflags != xie.tflags || xi.vmask != xie.vmask || (
	    xi.algoname[0] != '\0' && FUNC9(xi.algoname,
	    xie.algoname) != 0) || xi.flags != xie.flags)
		FUNC3(EX_DATAERR, "The existing table is not compatible "
		    "with one you are creating.");

	/* Flush existing table if instructed to do so */
	if (orflush != 0 && FUNC14(oh) != 0)
		FUNC2(EX_OSERR, "Table flush on creation failed");
}
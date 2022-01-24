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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int ;
struct parse {int dummy; } ;
struct TYPE_5__ {char* flagstr; int /*<<< orphan*/  mask; scalar_t__ hits; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ reslist_row ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  CTL_OP_READ_ORDLIST_A ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RESLIST_FIELDS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const,char const*,int /*<<< orphan*/ *,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 scalar_t__ FUNC9 (size_t*,char const**,char**,char**) ; 
 int FUNC10 (char*,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int*,TYPE_1__*) ; 

__attribute__((used)) static void 
FUNC13(
	struct parse *	pcmd,
	FILE *		fp
	)
{
	const char addr_fmtu[] =	"addr.%u";
	const char mask_fmtu[] =	"mask.%u";
	const char hits_fmt[] =		"hits.%u";
	const char flags_fmt[] =	"flags.%u";
	const char qdata[] =		"addr_restrictions";
	const int qdata_chars =		FUNC0(qdata) - 1;
	const char *	datap;
	int		qres;
	size_t		dsize;
	u_short		rstatus;
	char *		tag;
	char *		val;
	int		fields;
	u_int		ui;
	reslist_row	row;
	int		comprende;
	size_t		len;

	qres = FUNC5(CTL_OP_READ_ORDLIST_A, 0, TRUE, qdata_chars,
		       qdata, &rstatus, &dsize, &datap);
	if (qres)	/* message already displayed */
		return;

	FUNC7(fp,
		"   hits    addr/prefix or addr mask\n"
		"           restrictions\n"
		"==============================================================================\n");
		/* '=' x 78 */

	FUNC2(row);
	fields = 0;
	ui = 0;
	while (FUNC9(&dsize, &datap, &tag, &val)) {
		FUNC1(tag && val);
		if (debug > 1)
			FUNC7(&stderr, "nextvar gave: %s = %s\n", tag, val);
		comprende = FALSE;
		switch(tag[0]) {

		case 'a':
			if (1 == FUNC10(tag, addr_fmtu, &ui) &&
			    FUNC4(val, &row.addr))
				comprende = TRUE;
			break;

		case 'f':
			if (1 == FUNC10(tag, flags_fmt, &ui)) {
				if (NULL == val) {
					row.flagstr[0] = '\0';
					comprende = TRUE;
				} else if ((len = FUNC11(val)) < sizeof(row.flagstr)) {
					FUNC8(row.flagstr, val, len);
					row.flagstr[len] = '\0';
					comprende = TRUE;
				} else {
					 /* no flags, and still !comprende */
					row.flagstr[0] = '\0';
				}
			}
			break;

		case 'h':
			if (1 == FUNC10(tag, hits_fmt, &ui) &&
			    1 == FUNC10(val, "%lu", &row.hits))
				comprende = TRUE;
			break;

		case 'm':
			if (1 == FUNC10(tag, mask_fmtu, &ui) &&
			    FUNC4(val, &row.mask))
				comprende = TRUE;
			break;
		}

		if (comprende) {
			/* error out if rows out of order */
			FUNC12(fp, ui, &fields, &row);
			/* if the row is complete, print it */
			FUNC3(&fields, &row, fp);
		}
	}
	if (fields != RESLIST_FIELDS)
		FUNC7(fp, "Warning: incomplete row with %d (of %d) fields",
			fields, RESLIST_FIELDS);

	FUNC6(fp);
}
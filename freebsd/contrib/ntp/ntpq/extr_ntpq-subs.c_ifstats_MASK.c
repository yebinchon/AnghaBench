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
struct TYPE_5__ {char* name; scalar_t__ uptime; scalar_t__ send_errors; scalar_t__ sent; scalar_t__ ttl; scalar_t__ received; scalar_t__ peer_count; scalar_t__ mcast_count; scalar_t__ flags; scalar_t__ enabled; int /*<<< orphan*/  bcast; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ ifstats_row ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READ_ORDLIST_A ; 
 int FALSE ; 
 int IFSTATS_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (size_t*,char const**,char**,char**) ; 
 int FUNC9 (char*,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int*,TYPE_1__*) ; 

__attribute__((used)) static void 
FUNC12(
	struct parse *	pcmd,
	FILE *		fp
	)
{
	const char	addr_fmt[] =	"addr.%u";
	const char	bcast_fmt[] =	"bcast.%u";
	const char	en_fmt[] =	"en.%u";	/* enabled */
	const char	flags_fmt[] =	"flags.%u";
	const char	mc_fmt[] =	"mc.%u";	/* mcast count */
	const char	name_fmt[] =	"name.%u";
	const char	pc_fmt[] =	"pc.%u";	/* peer count */
	const char	rx_fmt[] =	"rx.%u";
	const char	tl_fmt[] =	"tl.%u";	/* ttl */
	const char	tx_fmt[] =	"tx.%u";
	const char	txerr_fmt[] =	"txerr.%u";
	const char	up_fmt[] =	"up.%u";	/* uptime */
	const char *	datap;
	int		qres;
	size_t		dsize;
	u_short		rstatus;
	char *		tag;
	char *		val;
	int		fields;
	u_int		ui;
	ifstats_row	row;
	int		comprende;
	size_t		len;

	qres = FUNC4(CTL_OP_READ_ORDLIST_A, 0, TRUE, 0, NULL, &rstatus,
		       &dsize, &datap);
	if (qres)	/* message already displayed */
		return;

	FUNC6(fp,
		"    interface name                                        send\n"
		" #  address/broadcast     drop flag ttl mc received sent failed peers   uptime\n"
		"==============================================================================\n");
		/* '=' x 78 */

	FUNC1(row);
	fields = 0;
	ui = 0;
	while (FUNC8(&dsize, &datap, &tag, &val)) {
		FUNC0(tag && val);
		if (debug > 1)
		    FUNC6(&stderr, "nextvar gave: %s = %s\n", tag, val);
		comprende = FALSE;
		switch(tag[0]) {

		case 'a':
			if (1 == FUNC9(tag, addr_fmt, &ui) &&
			    FUNC3(val, &row.addr))
				comprende = TRUE;
			break;

		case 'b':
			if (1 == FUNC9(tag, bcast_fmt, &ui) &&
			    ('\0' == *val ||
			     FUNC3(val, &row.bcast)))
				comprende = TRUE;
			break;

		case 'e':
			if (1 == FUNC9(tag, en_fmt, &ui) &&
			    1 == FUNC9(val, "%d", &row.enabled))
				comprende = TRUE;
			break;

		case 'f':
			if (1 == FUNC9(tag, flags_fmt, &ui) &&
			    1 == FUNC9(val, "0x%x", &row.flags))
				comprende = TRUE;
			break;

		case 'm':
			if (1 == FUNC9(tag, mc_fmt, &ui) &&
			    1 == FUNC9(val, "%u", &row.mcast_count))
				comprende = TRUE;
			break;

		case 'n':
			if (1 == FUNC9(tag, name_fmt, &ui)) {
				/* strip quotes */
				len = FUNC10(val);
				if (len >= 2 &&
				    len - 2 < sizeof(row.name)) {
					len -= 2;
					FUNC7(row.name, val + 1, len);
					row.name[len] = '\0';
					comprende = TRUE;
				}
			}
			break;

		case 'p':
			if (1 == FUNC9(tag, pc_fmt, &ui) &&
			    1 == FUNC9(val, "%u", &row.peer_count))
				comprende = TRUE;
			break;

		case 'r':
			if (1 == FUNC9(tag, rx_fmt, &ui) &&
			    1 == FUNC9(val, "%u", &row.received))
				comprende = TRUE;
			break;

		case 't':
			if (1 == FUNC9(tag, tl_fmt, &ui) &&
			    1 == FUNC9(val, "%u", &row.ttl))
				comprende = TRUE;
			else if (1 == FUNC9(tag, tx_fmt, &ui) &&
				 1 == FUNC9(val, "%u", &row.sent))
				comprende = TRUE;
			else if (1 == FUNC9(tag, txerr_fmt, &ui) &&
				 1 == FUNC9(val, "%u", &row.send_errors))
				comprende = TRUE;
			break;

		case 'u':
			if (1 == FUNC9(tag, up_fmt, &ui) &&
			    1 == FUNC9(val, "%u", &row.uptime))
				comprende = TRUE;
			break;
		}

		if (comprende) {
			/* error out if rows out of order */
			FUNC11(fp, ui, &fields, &row);
			/* if the row is complete, print it */
			FUNC2(&fields, &row, fp);
		}
	}
	if (fields != IFSTATS_FIELDS)
		FUNC6(fp, "Warning: incomplete row with %d (of %d) fields\n",
			fields, IFSTATS_FIELDS);

	FUNC5(fp);
}
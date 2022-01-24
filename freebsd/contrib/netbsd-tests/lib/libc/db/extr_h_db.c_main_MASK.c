#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  recno_t ;
typedef  int /*<<< orphan*/  recno ;
typedef  enum S { ____Placeholder_S } S ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_25__ {scalar_t__ (* close ) (TYPE_2__*) ;} ;
struct TYPE_24__ {size_t size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ DBT ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 int COMMAND ; 
#define  COMPARE 132 
 int DATA ; 
 scalar_t__ DB_BTREE ; 
 int DB_LOCK ; 
 scalar_t__ DB_RECNO ; 
#define  GET 131 
 int KEY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
#define  PUT 130 
#define  REMOVE 129 
 int /*<<< orphan*/  R_CURSOR ; 
#define  SEQ 128 
 scalar_t__ STDOUT_FILENO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 TYPE_2__* XXdbp ; 
 int XXlineno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_2__* FUNC7 (char*,int,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,...) ; 
 char* FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (int,char**,char*) ; 
 int /*<<< orphan*/ * infop ; 
 scalar_t__ FUNC19 (unsigned char) ; 
 int lineno ; 
 scalar_t__ ofd ; 
 scalar_t__ FUNC20 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC23 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/ * FUNC26 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC28 (char*,char) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 size_t FUNC30 (char*) ; 
 char* FUNC31 (char*,char*) ; 
 scalar_t__ FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 
 scalar_t__ type ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int FUNC37 (scalar_t__,char*,int) ; 
 void* FUNC38 (char*,size_t) ; 

int
FUNC39(int argc, char *argv[])
{
	extern int optind;
	extern char *optarg;
	enum S command = COMMAND, state;
	DB *dbp;
	DBT data, key, keydata;
	size_t len;
	int ch, oflags, sflag;
	char *fname, *infoarg, *p, *t, buf[8 * 1024];
	bool unlink_dbfile;

	infoarg = NULL;
	fname = NULL;
	unlink_dbfile = false;
	oflags = O_CREAT | O_RDWR;
	sflag = 0;
	while ((ch = FUNC18(argc, argv, "f:i:lo:s")) != -1)
		switch (ch) {
		case 'f':
			fname = optarg;
			break;
		case 'i':
			infoarg = optarg;
			break;
		case 'l':
			oflags |= DB_LOCK;
			break;
		case 'o':
			if ((ofd = FUNC20(optarg,
			    O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0)
				FUNC10(1, "Cannot create `%s'", optarg);
			break;
		case 's':
			sflag = 1;
			break;
		case '?':
		default:
			FUNC36();
		}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC36();

	/* Set the type. */
	type = FUNC8(*argv++);

	/* Open the descriptor file. */
        if (FUNC29(*argv, "-") && FUNC14(*argv, "r", stdin) == NULL)
	    FUNC10(1, "Cannot reopen `%s'", *argv);

	/* Set up the db structure as necessary. */
	if (infoarg == NULL)
		infop = NULL;
	else
		for (p = FUNC31(infoarg, ",\t "); p != NULL;
		    p = FUNC31(0, ",\t "))
			if (*p != '\0')
				infop = FUNC26(type, p);

	/*
	 * Open the DB.  Delete any preexisting copy, you almost never
	 * want it around, and it often screws up tests.
	 */
	if (fname == NULL) {
		const char *q = FUNC17("TMPDIR");
		if (q == NULL)
			q = "/var/tmp";
		(void)FUNC27(buf, sizeof(buf), "%s/__dbtest", q);
		fname = buf;
		(void)FUNC34(buf);
		unlink_dbfile = true;
	} else  if (!sflag)
		(void)FUNC34(fname);

	if ((dbp = FUNC7(fname,
	    oflags, S_IRUSR | S_IWUSR, type, infop)) == NULL)
		FUNC10(1, "Cannot dbopen `%s'", fname);
	XXdbp = dbp;
	if (unlink_dbfile)
		(void)FUNC34(fname);

	state = COMMAND;
	for (lineno = 1;
	    (p = FUNC12(buf, sizeof(buf), stdin)) != NULL; ++lineno) {
		/* Delete the newline, displaying the key/data is easier. */
		if (ofd == STDOUT_FILENO && (t = FUNC28(p, '\n')) != NULL)
			*t = '\0';
		if ((len = FUNC30(buf)) == 0 || FUNC19((unsigned char)*p) ||
		    *p == '#')
			continue;

		/* Convenient gdb break point. */
		if (XXlineno == lineno)
			XXlineno = 1;
		switch (*p) {
		case 'c':			/* compare */
			FUNC2(state);
			state = KEY;
			command = COMPARE;
			break;
		case 'e':			/* echo */
			FUNC2(state);
			/* Don't display the newline, if CR at EOL. */
			if (p[len - 2] == '\r')
				--len;
			if (FUNC37(ofd, p + 1, len - 1) != (ssize_t)len - 1 ||
			    FUNC37(ofd, "\n", 1) != 1)
				FUNC10(1, "write failed");
			break;
		case 'g':			/* get */
			FUNC2(state);
			state = KEY;
			command = GET;
			break;
		case 'p':			/* put */
			FUNC2(state);
			state = KEY;
			command = PUT;
			break;
		case 'r':			/* remove */
			FUNC2(state);
                        if (flags == R_CURSOR) {
				FUNC22(dbp, &key);
				state = COMMAND;
                        } else {
				state = KEY;
				command = REMOVE;
			}
			break;
		case 'S':			/* sync */
			FUNC2(state);
			FUNC33(dbp);
			state = COMMAND;
			break;
		case 's':			/* seq */
			FUNC2(state);
			if (flags == R_CURSOR) {
				state = KEY;
				command = SEQ;
			} else
				FUNC24(dbp, &key);
			break;
		case 'f':
			flags = FUNC25(p + 1);
			break;
		case 'D':			/* data file */
			FUNC3(state);
			data.data = FUNC23(p + 1, &data.size);
			goto ldata;
		case 'd':			/* data */
			FUNC3(state);
			data.data = FUNC38(p + 1, len - 1);
			data.size = len - 1;
ldata:			switch (command) {
			case COMPARE:
				FUNC6(&keydata, &data);
				break;
			case PUT:
				FUNC21(dbp, &key, &data);
				break;
			default:
				FUNC11(1, "line %zu: command doesn't take data",
				    lineno);
			}
			if (type != DB_RECNO)
				FUNC13(key.data);
			FUNC13(data.data);
			state = COMMAND;
			break;
		case 'K':			/* key file */
			FUNC4(state);
			if (type == DB_RECNO)
				FUNC11(1, "line %zu: 'K' not available for recno",
				    lineno);
			key.data = FUNC23(p + 1, &key.size);
			goto lkey;
		case 'k':			/* key */
			FUNC4(state);
			if (type == DB_RECNO) {
				static recno_t recno;
				recno = FUNC1(p + 1);
				key.data = &recno;
				key.size = sizeof(recno);
			} else {
				key.data = FUNC38(p + 1, len - 1);
				key.size = len - 1;
			}
lkey:			switch (command) {
			case COMPARE:
				FUNC16(dbp, &key, &keydata);
				state = DATA;
				break;
			case GET:
				FUNC15(dbp, &key);
				if (type != DB_RECNO)
					FUNC13(key.data);
				state = COMMAND;
				break;
			case PUT:
				state = DATA;
				break;
			case REMOVE:
				FUNC22(dbp, &key);
				if ((type != DB_RECNO) && (flags != R_CURSOR))
					FUNC13(key.data);
				state = COMMAND;
				break;
			case SEQ:
				FUNC24(dbp, &key);
				if ((type != DB_RECNO) && (flags != R_CURSOR))
					FUNC13(key.data);
				state = COMMAND;
				break;
			default:
				FUNC11(1, "line %zu: command doesn't take a key",
				    lineno);
			}
			break;
		case 'o':
			FUNC9(dbp, p[1] == 'r', 0);
			break;
#ifdef	__NetBSD__
		case 'O':
			dump(dbp, p[1] == 'r', 1);
			break;
		case 'u':
			unlinkpg(dbp);
			break;
#endif
		default:
			FUNC11(1, "line %zu: %s: unknown command character",
			    lineno, p);
		}
	}
#ifdef STATISTICS
	/*
	 * -l must be used (DB_LOCK must be set) for this to be
	 * used, otherwise a page will be locked and it will fail.
	 */
	if (type == DB_BTREE && oflags & DB_LOCK)
		__bt_stat(dbp);
#endif
	if ((*dbp->close)(dbp))
		FUNC10(1, "db->close failed");
	(void)FUNC5(ofd);
	return 0;
}
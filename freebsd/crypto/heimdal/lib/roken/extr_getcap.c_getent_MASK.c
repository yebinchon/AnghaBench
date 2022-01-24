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
typedef  int u_int ;
typedef  int /*<<< orphan*/  pbuf ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {scalar_t__ (* close ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 size_t BFRAG ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_RECURSION ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _POSIX_PATH_MAX ; 
 int FUNC0 (TYPE_1__*,char**,char const*) ; 
 char* FUNC1 (char*,char*,char) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char*,int) ; 
 char* FUNC12 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,size_t) ; 
 size_t FUNC15 (char*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 char* toprec ; 
 size_t topreclen ; 

__attribute__((used)) static int
FUNC18(char **cap, size_t *len, char **db_array, int fd,
       const char *name, int depth, char *nfield)
{
    char *r_end, *rp = NULL, **db_p;	/* pacify gcc */
    int myfd = 0, eof, foundit;
    char *record;
    int tc_not_resolved;

    /*
     * Return with ``loop detected'' error if we've recursed more than
     * MAX_RECURSION times.
     */
    if (depth > MAX_RECURSION)
	return (-3);

    /*
     * Check if we have a top record from cgetset().
     */
    if (depth == 0 && toprec != NULL && FUNC2(toprec, name) == 0) {
	size_t len = topreclen + BFRAG;
	if ((record = FUNC7 (len)) == NULL) {
	    errno = ENOMEM;
	    return (-2);
	}
	(void)FUNC14(record, toprec, len);
	db_p = db_array;
	rp = record + topreclen + 1;
	r_end = rp + BFRAG;
	goto tc_exp;
    }
    /*
     * Allocate first chunk of memory.
     */
    if ((record = FUNC7(BFRAG)) == NULL) {
	errno = ENOMEM;
	return (-2);
    }
    r_end = record + BFRAG;
    foundit = 0;
    /*
     * Loop through database array until finding the record.
     */

    for (db_p = db_array; *db_p != NULL; db_p++) {
	eof = 0;

	/*
	 * Open database if not already open.
	 */

	if (fd >= 0) {
	    (void)FUNC6(fd, (off_t)0, SEEK_SET);
	} else {
#ifdef USE_DB
	    char pbuf[_POSIX_PATH_MAX];
	    char *cbuf;
	    size_t clen;
	    int retval;
	    DB *capdbp;

	    (void)snprintf(pbuf, sizeof(pbuf), "%s.db", *db_p);
	    if ((capdbp = dbopen(pbuf, O_RDONLY, 0, DB_HASH, 0))
		!= NULL) {
		free(record);
		retval = cdbget(capdbp, &record, name);
		if (retval < 0) {
		    /* no record available */
		    (void)capdbp->close(capdbp);
		    return (retval);
		}
				/* save the data; close frees it */
		clen = strlen(record);
		cbuf = malloc(clen + 1);
		if (cbuf == NULL)
		    return (-2);
		memmove(cbuf, record, clen + 1);
		if (capdbp->close(capdbp) < 0) {
		    free(cbuf);
		    return (-2);
		}
		*len = clen;
		*cap = cbuf;
		return (retval);
	    } else
#endif
	    {
		fd = FUNC10(*db_p, O_RDONLY, 0);
		if (fd < 0) {
		    /* No error on unfound file. */
		    continue;
		}
		myfd = 1;
	    }
	}
	/*
	 * Find the requested capability record ...
	 */
	{
	    char buf[BUFSIZ];
	    char *b_end, *bp, *cp;
	    int c, slash;

	    /*
	     * Loop invariants:
	     *	There is always room for one more character in record.
	     *	R_end always points just past end of record.
	     *	Rp always points just past last character in record.
	     *	B_end always points just past last character in buf.
	     *	Bp always points at next character in buf.
	     *	Cp remembers where the last colon was.
	     */
	    b_end = buf;
	    bp = buf;
	    cp = 0;
	    slash = 0;
	    for (;;) {

		/*
		 * Read in a line implementing (\, newline)
		 * line continuation.
		 */
		rp = record;
		for (;;) {
		    if (bp >= b_end) {
			int n;

			n = FUNC11(fd, buf, sizeof(buf));
			if (n <= 0) {
			    if (myfd)
				(void)FUNC3(fd);
			    if (n < 0) {
				FUNC5(record);
				return (-2);
			    } else {
				fd = -1;
				eof = 1;
				break;
			    }
			}
			b_end = buf+n;
			bp = buf;
		    }

		    c = *bp++;
		    if (c == '\n') {
			if (slash) {
			    slash = 0;
			    rp--;
			    continue;
			} else
			    break;
		    }
		    if (slash) {
			slash = 0;
			cp = 0;
		    }
		    if (c == ':') {
			/*
			 * If the field was `empty' (i.e.
			 * contained only white space), back up
			 * to the colon (eliminating the
			 * field).
			 */
			if (cp)
			    rp = cp;
			else
			    cp = rp;
		    } else if (c == '\\') {
			slash = 1;
		    } else if (c != ' ' && c != '\t') {
			/*
			 * Forget where the colon was, as this
			 * is not an empty field.
			 */
			cp = 0;
		    }
		    *rp++ = c;

				/*
				 * Enforce loop invariant: if no room
				 * left in record buffer, try to get
				 * some more.
				 */
		    if (rp >= r_end) {
			u_int pos;
			size_t newsize;

			pos = rp - record;
			newsize = r_end - record + BFRAG;
			record = FUNC12(record, newsize);
			if (record == NULL) {
			    errno = ENOMEM;
			    if (myfd)
				(void)FUNC3(fd);
			    return (-2);
			}
			r_end = record + newsize;
			rp = record + pos;
		    }
		}
		/* Eliminate any white space after the last colon. */
		if (cp)
		    rp = cp + 1;
		/* Loop invariant lets us do this. */
		*rp++ = '\0';

		/*
		 * If encountered eof check next file.
		 */
		if (eof)
		    break;

		/*
		 * Toss blank lines and comments.
		 */
		if (*record == '\0' || *record == '#')
		    continue;

		/*
		 * See if this is the record we want ...
		 */
		if (FUNC2(record, name) == 0) {
		    if (nfield == NULL || !FUNC9(nfield, record)) {
			foundit = 1;
			break;	/* found it! */
		    }
		}
	    }
	}
	if (foundit)
	    break;
    }

    if (!foundit)
	return (-1);

    /*
     * Got the capability record, but now we have to expand all tc=name
     * references in it ...
     */
 tc_exp:	{
	char *newicap, *s;
	size_t ilen, newilen;
	int diff, iret, tclen;
	char *icap, *scan, *tc, *tcstart, *tcend;

	/*
	 * Loop invariants:
	 *	There is room for one more character in record.
	 *	R_end points just past end of record.
	 *	Rp points just past last character in record.
	 *	Scan points at remainder of record that needs to be
	 *	scanned for tc=name constructs.
	 */
	scan = record;
	tc_not_resolved = 0;
	for (;;) {
	    if ((tc = FUNC1(scan, "tc", '=')) == NULL)
		break;

	    /*
	     * Find end of tc=name and stomp on the trailing `:'
	     * (if present) so we can use it to call ourselves.
	     */
	    s = tc;
	    for (;;)
		if (*s == '\0')
		    break;
		else
		    if (*s++ == ':') {
			*(s - 1) = '\0';
			break;
		    }
	    tcstart = tc - 3;
	    tclen = s - tcstart;
	    tcend = s;

	    iret = FUNC18(&icap, &ilen, db_p, fd, tc, depth+1,
			  NULL);
	    newicap = icap;		/* Put into a register. */
	    newilen = ilen;
	    if (iret != 0) {
				/* an error */
		if (iret < -1) {
		    if (myfd)
			(void)FUNC3(fd);
		    FUNC5(record);
		    return (iret);
		}
		if (iret == 1)
		    tc_not_resolved = 1;
				/* couldn't resolve tc */
		if (iret == -1) {
		    *(s - 1) = ':';
		    scan = s - 1;
		    tc_not_resolved = 1;
		    continue;

		}
	    }
	    /* not interested in name field of tc'ed record */
	    s = newicap;
	    for (;;)
		if (*s == '\0')
		    break;
		else
		    if (*s++ == ':')
			break;
	    newilen -= s - newicap;
	    newicap = s;

	    /* make sure interpolated record is `:'-terminated */
	    s += newilen;
	    if (*(s-1) != ':') {
		*s = ':';	/* overwrite NUL with : */
		newilen++;
	    }

	    /*
	     * Make sure there's enough room to insert the
	     * new record.
	     */
	    diff = newilen - tclen;
	    if (diff >= r_end - rp) {
		u_int pos, tcpos, tcposend;
		size_t newsize;

		pos = rp - record;
		newsize = r_end - record + diff + BFRAG;
		tcpos = tcstart - record;
		tcposend = tcend - record;
		record = FUNC12(record, newsize);
		if (record == NULL) {
		    errno = ENOMEM;
		    if (myfd)
			(void)FUNC3(fd);
		    FUNC5(icap);
		    return (-2);
		}
		r_end = record + newsize;
		rp = record + pos;
		tcstart = record + tcpos;
		tcend = record + tcposend;
	    }

	    /*
	     * Insert tc'ed record into our record.
	     */
	    s = tcstart + newilen;
	    FUNC8(s, tcend,  (size_t)(rp - tcend));
	    FUNC8(tcstart, newicap, newilen);
	    rp += diff;
	    FUNC5(icap);

	    /*
	     * Start scan on `:' so next cgetcap works properly
	     * (cgetcap always skips first field).
	     */
	    scan = s-1;
	}

    }
    /*
     * Close file (if we opened it), give back any extra memory, and
     * return capability, length and success.
     */
    if (myfd)
	(void)FUNC3(fd);
    *len = rp - record - 1;	/* don't count NUL */
    if (r_end > rp)
	if ((record =
	     FUNC12(record, (size_t)(rp - record))) == NULL) {
	    errno = ENOMEM;
	    return (-2);
	}

    *cap = record;
    if (tc_not_resolved)
	return (1);
    return (0);
}
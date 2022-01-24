#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timezone {int dummy; } ;
struct timeval {int dummy; } ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/ * sighand ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CONTINUE ; 
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 int EOF ; 
 scalar_t__ EPIPE ; 
 long HASHBYTES ; 
 scalar_t__ PRELIM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/ * SIG_IGN ; 
#define  TYPE_A 130 
#define  TYPE_I 129 
#define  TYPE_L 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * abortrecv ; 
 scalar_t__ FUNC1 (char*,int) ; 
 char* FUNC2 (char*,size_t*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int code ; 
 scalar_t__ FUNC6 (char*,...) ; 
 scalar_t__ cpend ; 
 int /*<<< orphan*/  crflag ; 
 int curtype ; 
 int data ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 scalar_t__ errno ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct timeval*,struct timezone*) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  hash ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,char*) ; 
 scalar_t__ proxy ; 
 int /*<<< orphan*/  FUNC24 (char*,long,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char) ; 
 int /*<<< orphan*/  recvabort ; 
 int restart_point ; 
 scalar_t__ runique ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC32 (char*,char*) ; 
 char* FUNC33 (char*,char) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 
 int FUNC35 (int /*<<< orphan*/ *) ; 
 int FUNC36 (int /*<<< orphan*/ *) ; 
 int FUNC37 (int /*<<< orphan*/ *) ; 
 int type ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC38 (char*,...) ; 
 int /*<<< orphan*/  FUNC39 (char*,char*) ; 
 int FUNC40 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC41 (char *cmd, char *local, char *remote,
	     char *lmode, int printnames, int local_given)
{
    FILE *fout = NULL, *din = NULL;
    int (*closefunc) (FILE *);
    sighand oldintr, oldintp;
    int c, d, is_retr, tcrflag, bare_lfs = 0;
    static size_t bufsize;
    static char *buf;
    long bytes = 0, hashbytes = HASHBYTES;
    struct timeval start, stop;
    struct stat st;

    is_retr = FUNC32 (cmd, "RETR") == 0;
    if (is_retr && verbose && printnames) {
	if (FUNC32 (local, "-") != 0)
	    FUNC22 ("local: %s ", local);
	if (remote)
	    FUNC22 ("remote: %s\n", remote);
    }
    if (proxy && is_retr) {
	FUNC23 (cmd, local, remote);
	return;
    }
    closefunc = NULL;
    oldintr = NULL;
    oldintp = NULL;
    tcrflag = !crflag && is_retr;
    if (FUNC30 (recvabort)) {
	while (cpend) {
	    FUNC15 (0);
	}
	if (data >= 0) {
	    FUNC5 (data);
	    data = -1;
	}
	if (oldintr)
	    FUNC31 (SIGINT, oldintr);
	code = -1;
	return;
    }
    oldintr = FUNC31 (SIGINT, abortrecv);
    if (!local_given || (FUNC32(local, "-") && *local != '|')) {
	if (FUNC1 (local, 2) < 0) {
	    char *dir = FUNC33 (local, '/');

	    if (errno != ENOENT && errno != EACCES) {
		FUNC38 ("local: %s", local);
		FUNC31 (SIGINT, oldintr);
		code = -1;
		return;
	    }
	    if (dir != NULL)
		*dir = 0;
	    d = FUNC1 (dir ? local : ".", 2);
	    if (dir != NULL)
		*dir = '/';
	    if (d < 0) {
		FUNC38 ("local: %s", local);
		FUNC31 (SIGINT, oldintr);
		code = -1;
		return;
	    }
	    if (!runique && errno == EACCES &&
		FUNC4 (local, 0600) < 0) {
		FUNC38 ("local: %s", local);
		FUNC31 (SIGINT, oldintr);
		FUNC31 (SIGINT, oldintr);
		code = -1;
		return;
	    }
	    if (runique && errno == EACCES &&
		(local = FUNC17 (local)) == NULL) {
		FUNC31 (SIGINT, oldintr);
		code = -1;
		return;
	    }
	} else if (runique && (local = FUNC17 (local)) == NULL) {
	    FUNC31(SIGINT, oldintr);
	    code = -1;
	    return;
	}
    }
    if (!is_retr) {
	if (curtype != TYPE_A)
	    FUNC3 (TYPE_A, 0);
    } else if (curtype != type)
	FUNC3 (type, 0);
    if (FUNC18 ()) {
	FUNC31 (SIGINT, oldintr);
	code = -1;
	return;
    }
    if (FUNC30 (recvabort))
	goto abort;
    if (is_retr && restart_point &&
	FUNC6 ("REST %ld", (long) restart_point) != CONTINUE)
	return;
    if (remote) {
	if (FUNC6 ("%s %s", cmd, remote) != PRELIM) {
	    FUNC31 (SIGINT, oldintr);
	    return;
	}
    } else {
	if (FUNC6 ("%s", cmd) != PRELIM) {
	    FUNC31 (SIGINT, oldintr);
	    return;
	}
    }
    din = FUNC7 ("r");
    if (din == NULL)
	goto abort;
    FUNC29 (FUNC11 (din), 1);
    if (local_given && FUNC32 (local, "-") == 0)
	fout = stdout;
    else if (local_given && *local == '|') {
	oldintp = FUNC31 (SIGPIPE, SIG_IGN);
	fout = FUNC21 (local + 1, "w");
	if (fout == NULL) {
	    FUNC38 ("%s", local + 1);
	    goto abort;
	}
	closefunc = pclose;
    } else {
	fout = FUNC12 (local, lmode);
	if (fout == NULL) {
	    FUNC38 ("local: %s", local);
	    goto abort;
	}
	closefunc = fclose;
    }
    buf = FUNC2 (buf, &bufsize,
			FUNC14 (FUNC11 (fout), &st) >= 0 ? &st : NULL);
    if (buf == NULL)
	goto abort;

    FUNC16 (&start, (struct timezone *) 0);
    switch (curtype) {

    case TYPE_I:
    case TYPE_L:
	if (restart_point &&
	    FUNC19 (FUNC11 (fout), restart_point, SEEK_SET) < 0) {
	    FUNC38 ("local: %s", local);
	    if (closefunc != NULL)
		(*closefunc) (fout);
	    return;
	}
	errno = d = 0;
	while ((c = FUNC28 (FUNC11 (din), buf, bufsize)) > 0) {
	    if ((d = FUNC40 (FUNC11 (fout), buf, c)) != c)
		break;
	    bytes += c;
	    if (hash) {
		while (bytes >= hashbytes) {
		    FUNC26 ('#');
		    hashbytes += HASHBYTES;
		}
		FUNC10 (stdout);
	    }
	}
	if (hash && bytes > 0) {
	    if (bytes < HASHBYTES)
		FUNC26 ('#');
	    FUNC26 ('\n');
	    FUNC10 (stdout);
	}
	if (c < 0) {
	    if (errno != EPIPE)
		FUNC38 ("netin");
	    bytes = -1;
	}
	if (d < c) {
	    if (d < 0)
		FUNC38 ("local: %s", local);
	    else
		FUNC39 ("%s: short write", local);
	}
	break;

    case TYPE_A:
	if (restart_point) {
	    int i, n, ch;

	    if (FUNC13 (fout, 0L, SEEK_SET) < 0)
		goto done;
	    n = restart_point;
	    for (i = 0; i++ < n;) {
		if ((ch = FUNC27 (fout)) == EOF)
		    goto done;
		if (ch == '\n')
		    i++;
	    }
	    if (FUNC13 (fout, 0L, SEEK_CUR) < 0) {
	done:
		FUNC38 ("local: %s", local);
		if (closefunc != NULL)
		    (*closefunc) (fout);
		return;
	    }
	}
	while ((c = FUNC27(din)) != EOF) {
	    if (c == '\n')
		bare_lfs++;
	    while (c == '\r') {
		while (hash && (bytes >= hashbytes)) {
		    FUNC26 ('#');
		    FUNC10 (stdout);
		    hashbytes += HASHBYTES;
		}
		bytes++;
		if ((c = FUNC27 (din)) != '\n' || tcrflag) {
		    if (FUNC9 (fout))
			goto break2;
		    FUNC25 ('\r', fout);
		    if (c == '\0') {
			bytes++;
			goto contin2;
		    }
		    if (c == EOF)
			goto contin2;
		}
	    }
	    FUNC25 (c, fout);
	    bytes++;
    contin2:;
	}
break2:
	if (bare_lfs) {
	    FUNC22 ("WARNING! %d bare linefeeds received in ASCII mode\n",
		    bare_lfs);
	    FUNC22 ("File may not have transferred correctly.\n");
	}
	if (hash) {
	    if (bytes < hashbytes)
		FUNC26 ('#');
	    FUNC26 ('\n');
	    FUNC10 (stdout);
	}
	if (FUNC9 (din)) {
	    if (errno != EPIPE)
		FUNC38 ("netin");
	    bytes = -1;
	}
	if (FUNC9 (fout))
	    FUNC38 ("local: %s", local);
	break;
    }
    if (closefunc != NULL)
	(*closefunc) (fout);
    FUNC31 (SIGINT, oldintr);
    if (oldintp)
	FUNC31 (SIGPIPE, oldintp);
    FUNC8 (din);
    FUNC16 (&stop, (struct timezone *) 0);
    FUNC15 (0);
    if (bytes > 0 && is_retr)
	FUNC24 ("received", bytes, &start, &stop);
    return;
abort:

    /* abort using RFC959 recommended IP,SYNC sequence  */

    if (oldintp)
	FUNC31 (SIGPIPE, oldintr);
    FUNC31 (SIGINT, SIG_IGN);
    if (!cpend) {
	code = -1;
	FUNC31 (SIGINT, oldintr);
	return;
    }
    FUNC0(din);
    code = -1;
    if (data >= 0) {
	FUNC5 (data);
	data = -1;
    }
    if (closefunc != NULL && fout != NULL)
	(*closefunc) (fout);
    if (din)
	FUNC8 (din);
    FUNC16 (&stop, (struct timezone *) 0);
    if (bytes > 0)
	FUNC24 ("received", bytes, &start, &stop);
    FUNC31 (SIGINT, oldintr);
}
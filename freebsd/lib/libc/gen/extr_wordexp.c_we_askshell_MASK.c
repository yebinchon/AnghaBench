#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t we_nbytes; size_t we_wordc; size_t we_offs; char** we_wordv; char* we_strings; } ;
typedef  TYPE_1__ wordexp_t ;
typedef  int /*<<< orphan*/  wfdstr ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WRDE_APPEND ; 
 int WRDE_BADVAL ; 
 int WRDE_CMDSUB ; 
 int WRDE_DOOFFS ; 
 int WRDE_NOCMD ; 
 int WRDE_NOSPACE ; 
 int WRDE_SHOWERR ; 
 int WRDE_SYNTAX ; 
 int WRDE_UNDEF ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char const*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC9 () ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*,char,long) ; 
 scalar_t__ FUNC12 (int*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,long) ; 
 char** FUNC14 (char**,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 long FUNC19 (char*,int /*<<< orphan*/ *,int) ; 
 long FUNC20 (int,char*,long) ; 
 int /*<<< orphan*/  FUNC21 (int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(const char *words, wordexp_t *we, int flags)
{
	int pdesw[2];			/* Pipe for writing words */
	int pdes[2];			/* Pipe for reading output */
	char wfdstr[sizeof(int) * 3 + 1];
	char buf[35];			/* Buffer for byte and word count */
	long nwords, nbytes;		/* Number of words, bytes from child */
	long i;				/* Handy integer */
	size_t sofs;			/* Offset into we->we_strings */
	size_t vofs;			/* Offset into we->we_wordv */
	pid_t pid;			/* Process ID of child */
	pid_t wpid;			/* waitpid return value */
	int status;			/* Child exit status */
	int error;			/* Our return value */
	int serrno;			/* errno to return */
	char *np, *p;			/* Handy pointers */
	char *nstrings;			/* Temporary for realloc() */
	char **nwv;			/* Temporary for realloc() */
	sigset_t newsigblock, oldsigblock;
	const char *ifs;

	serrno = errno;
	ifs = FUNC10("IFS");

	if (FUNC12(pdesw, O_CLOEXEC) < 0)
		return (WRDE_NOSPACE);	/* XXX */
	FUNC17(wfdstr, sizeof(wfdstr), "%d", pdesw[0]);
	if (FUNC12(pdes, O_CLOEXEC) < 0) {
		FUNC3(pdesw[0]);
		FUNC3(pdesw[1]);
		return (WRDE_NOSPACE);	/* XXX */
	}
	(void)FUNC16(&newsigblock);
	(void)FUNC15(&newsigblock, SIGCHLD);
	(void)FUNC2(SIG_BLOCK, &newsigblock, &oldsigblock);
	if ((pid = FUNC9()) < 0) {
		serrno = errno;
		FUNC3(pdesw[0]);
		FUNC3(pdesw[1]);
		FUNC3(pdes[0]);
		FUNC3(pdes[1]);
		(void)FUNC2(SIG_SETMASK, &oldsigblock, NULL);
		errno = serrno;
		return (WRDE_NOSPACE);	/* XXX */
	}
	else if (pid == 0) {
		/*
		 * We are the child; make /bin/sh expand `words'.
		 */
		(void)FUNC2(SIG_SETMASK, &oldsigblock, NULL);
		if ((pdes[1] != STDOUT_FILENO ?
		    FUNC4(pdes[1], STDOUT_FILENO) :
		    FUNC6(pdes[1], F_SETFD, 0)) < 0)
			FUNC5(1);
		if (FUNC6(pdesw[0], F_SETFD, 0) < 0)
			FUNC5(1);
		FUNC8(_PATH_BSHELL, "sh", flags & WRDE_UNDEF ? "-u" : "+u",
		    "-c", "IFS=$1;eval \"$2\";"
		    "freebsd_wordexp -f \"$3\" ${4:+\"$4\"}",
		    "",
		    ifs != NULL ? ifs : " \t\n",
		    flags & WRDE_SHOWERR ? "" : "exec 2>/dev/null",
		    wfdstr,
		    flags & WRDE_NOCMD ? "-p" : "",
		    (char *)NULL);
		FUNC5(1);
	}

	/*
	 * We are the parent; write the words.
	 */
	FUNC3(pdes[1]);
	FUNC3(pdesw[0]);
	if (!FUNC21(pdesw[1], words, FUNC18(words))) {
		FUNC3(pdesw[1]);
		error = WRDE_SYNTAX;
		goto cleanup;
	}
	FUNC3(pdesw[1]);
	/*
	 * Read the output of the shell wordexp function,
	 * which is a byte indicating that the words were parsed successfully,
	 * a 64-bit hexadecimal word count, a dummy byte, a 64-bit hexadecimal
	 * byte count (not including terminating null bytes), followed by the
	 * expanded words separated by nulls.
	 */
	switch (FUNC20(pdes[0], buf, 34)) {
	case 1:
		error = buf[0] == 'C' ? WRDE_CMDSUB : WRDE_BADVAL;
		serrno = errno;
		goto cleanup;
	case 34:
		break;
	default:
		error = WRDE_SYNTAX;
		serrno = errno;
		goto cleanup;
	}
	buf[17] = '\0';
	nwords = FUNC19(buf + 1, NULL, 16);
	buf[34] = '\0';
	nbytes = FUNC19(buf + 18, NULL, 16) + nwords;

	/*
	 * Allocate or reallocate (when flags & WRDE_APPEND) the word vector
	 * and string storage buffers for the expanded words we're about to
	 * read from the child.
	 */
	sofs = we->we_nbytes;
	vofs = we->we_wordc;
	if ((flags & (WRDE_DOOFFS|WRDE_APPEND)) == (WRDE_DOOFFS|WRDE_APPEND))
		vofs += we->we_offs;
	we->we_wordc += nwords;
	we->we_nbytes += nbytes;
	if ((nwv = FUNC14(we->we_wordv, (we->we_wordc + 1 +
	    (flags & WRDE_DOOFFS ? we->we_offs : 0)),
	    sizeof(char *))) == NULL) {
		error = WRDE_NOSPACE;
		goto cleanup;
	}
	we->we_wordv = nwv;
	if ((nstrings = FUNC13(we->we_strings, we->we_nbytes)) == NULL) {
		error = WRDE_NOSPACE;
		goto cleanup;
	}
	for (i = 0; i < vofs; i++)
		if (we->we_wordv[i] != NULL)
			we->we_wordv[i] += nstrings - we->we_strings;
	we->we_strings = nstrings;

	if (FUNC20(pdes[0], we->we_strings + sofs, nbytes) != nbytes) {
		error = WRDE_NOSPACE; /* abort for unknown reason */
		serrno = errno;
		goto cleanup;
	}

	error = 0;
cleanup:
	FUNC3(pdes[0]);
	do
		wpid = FUNC7(pid, &status, 0);
	while (wpid < 0 && errno == EINTR);
	(void)FUNC2(SIG_SETMASK, &oldsigblock, NULL);
	if (error != 0) {
		errno = serrno;
		return (error);
	}
	if (wpid < 0 || !FUNC1(status) || FUNC0(status) != 0)
		return (WRDE_NOSPACE); /* abort for unknown reason */

	/*
	 * Break the null-terminated expanded word strings out into
	 * the vector.
	 */
	if (vofs == 0 && flags & WRDE_DOOFFS)
		while (vofs < we->we_offs)
			we->we_wordv[vofs++] = NULL;
	p = we->we_strings + sofs;
	while (nwords-- != 0) {
		we->we_wordv[vofs++] = p;
		if ((np = FUNC11(p, '\0', nbytes)) == NULL)
			return (WRDE_NOSPACE);	/* XXX */
		nbytes -= np - p + 1;
		p = np + 1;
	}
	we->we_wordv[vofs] = NULL;

	return (0);
}
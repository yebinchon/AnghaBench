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
struct stat {int st_mode; } ;
struct mlink {char* file; char* dsec; char* arch; char* fsec; char* name; int /*<<< orphan*/  dform; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FORM_CAT ; 
 int /*<<< orphan*/  FORM_NONE ; 
 int /*<<< orphan*/  FORM_SRC ; 
 char* HOMEBREWDIR ; 
 scalar_t__ MANDOCLEVEL_BADARG ; 
 scalar_t__ OP_TEST ; 
 int PATH_MAX ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* basedir ; 
 int exitcode ; 
 int /*<<< orphan*/  FUNC1 (struct mlink*) ; 
 int FUNC2 (char const*,struct stat*) ; 
 struct mlink* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlink*,struct stat*) ; 
 scalar_t__ op ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,...) ; 
 int FUNC7 (char*,struct stat*) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (char*,char const*,int) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  use_all ; 

__attribute__((used)) static void
FUNC14(const char *file)
{
	char		 buf[PATH_MAX];
	struct stat	 st;
	struct mlink	*mlink;
	char		*p, *start;

	FUNC0(use_all);

	if (0 == FUNC11(file, "./", 2))
		file += 2;

	/*
	 * We have to do lstat(2) before realpath(3) loses
	 * the information whether this is a symbolic link.
	 * We need to know that because for symbolic links,
	 * we want to use the orginal file name, while for
	 * regular files, we want to use the real path.
	 */
	if (-1 == FUNC2(file, &st)) {
		exitcode = (int)MANDOCLEVEL_BADARG;
		FUNC6(file, "&lstat");
		return;
	} else if (0 == ((S_IFREG | S_IFLNK) & st.st_mode)) {
		exitcode = (int)MANDOCLEVEL_BADARG;
		FUNC6(file, "Not a regular file");
		return;
	}

	/*
	 * We have to resolve the file name to the real path
	 * in any case for the base directory check.
	 */
	if (NULL == FUNC5(file, buf)) {
		exitcode = (int)MANDOCLEVEL_BADARG;
		FUNC6(file, "&realpath");
		return;
	}

	if (OP_TEST == op)
		start = buf;
	else if (FUNC13(buf, basedir) == buf)
		start = buf + FUNC10(basedir);
#ifdef HOMEBREWDIR
	else if (strstr(buf, HOMEBREWDIR) == buf)
		start = buf;
#endif
	else {
		exitcode = (int)MANDOCLEVEL_BADARG;
		FUNC6("", "%s: outside base directory", buf);
		return;
	}

	/*
	 * Now we are sure the file is inside our tree.
	 * If it is a symbolic link, ignore the real path
	 * and use the original name.
	 * This implies passing stuff like "cat1/../man1/foo.1"
	 * on the command line won't work.  So don't do that.
	 * Note the stat(2) can still fail if the link target
	 * doesn't exist.
	 */
	if (S_IFLNK & st.st_mode) {
		if (-1 == FUNC7(buf, &st)) {
			exitcode = (int)MANDOCLEVEL_BADARG;
			FUNC6(file, "&stat");
			return;
		}
		if (FUNC9(buf, file, sizeof(buf)) >= sizeof(buf)) {
			FUNC6(file, "Filename too long");
			return;
		}
		start = buf;
		if (OP_TEST != op && FUNC13(buf, basedir) == buf)
			start += FUNC10(basedir);
	}

	mlink = FUNC3(1, sizeof(struct mlink));
	mlink->dform = FORM_NONE;
	if (FUNC9(mlink->file, start, sizeof(mlink->file)) >=
	    sizeof(mlink->file)) {
		FUNC6(start, "Filename too long");
		FUNC1(mlink);
		return;
	}

	/*
	 * In test mode or when the original name is absolute
	 * but outside our tree, guess the base directory.
	 */

	if (op == OP_TEST || (start == buf && *start == '/')) {
		if (FUNC11(buf, "man/", 4) == 0)
			start = buf + 4;
		else if ((start = FUNC13(buf, "/man/")) != NULL)
			start += 5;
		else
			start = buf;
	}

	/*
	 * First try to guess our directory structure.
	 * If we find a separator, try to look for man* or cat*.
	 * If we find one of these and what's underneath is a directory,
	 * assume it's an architecture.
	 */
	if (NULL != (p = FUNC8(start, '/'))) {
		*p++ = '\0';
		if (0 == FUNC11(start, "man", 3)) {
			mlink->dform = FORM_SRC;
			mlink->dsec = start + 3;
		} else if (0 == FUNC11(start, "cat", 3)) {
			mlink->dform = FORM_CAT;
			mlink->dsec = start + 3;
		}

		start = p;
		if (NULL != mlink->dsec && NULL != (p = FUNC8(start, '/'))) {
			*p++ = '\0';
			mlink->arch = start;
			start = p;
		}
	}

	/*
	 * Now check the file suffix.
	 * Suffix of `.0' indicates a catpage, `.1-9' is a manpage.
	 */
	p = FUNC12(start, '\0');
	while (p-- > start && '/' != *p && '.' != *p)
		/* Loop. */ ;

	if ('.' == *p) {
		*p++ = '\0';
		mlink->fsec = p;
	}

	/*
	 * Now try to parse the name.
	 * Use the filename portion of the path.
	 */
	mlink->name = start;
	if (NULL != (p = FUNC12(start, '/'))) {
		mlink->name = p + 1;
		*p = '\0';
	}
	FUNC4(mlink, &st);
}
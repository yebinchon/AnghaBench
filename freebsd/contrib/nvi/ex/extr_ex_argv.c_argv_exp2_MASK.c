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
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  O_SHELL ; 
 int /*<<< orphan*/  O_SHELLMETA ; 
 int /*<<< orphan*/  SHELLECHO ; 
 size_t SHELLOFFSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC9(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen)
{
	size_t blen, len, n;
	int rval;
	CHAR_T *bp, *p;

	FUNC1(sp, bp, blen, 512);

#define	SHELLECHO	L("echo ")
#define	SHELLOFFSET	(SIZE(SHELLECHO) - 1)
	FUNC3(bp, SHELLECHO, SHELLOFFSET);
	p = bp + SHELLOFFSET;
	len = SHELLOFFSET;

#if defined(DEBUG) && 0
	TRACE(sp, "file_argv: {%.*s}\n", (int)cmdlen, cmd);
#endif

	if (FUNC6(sp, excp, cmd, cmdlen, p, &len, &bp, &blen, 0)) {
		rval = 1;
		goto err;
	}

#if defined(DEBUG) && 0
	TRACE(sp, "before shell: %d: {%s}\n", len, bp);
#endif

	/*
	 * Do shell word expansion -- it's very, very hard to figure out what
	 * magic characters the user's shell expects.  Historically, it was a
	 * union of v7 shell and csh meta characters.  We match that practice
	 * by default, so ":read \%" tries to read a file named '%'.  It would
	 * make more sense to pass any special characters through the shell,
	 * but then, if your shell was csh, the above example will behave
	 * differently in nvi than in vi.  If you want to get other characters
	 * passed through to your shell, change the "meta" option.
	 */
	if (FUNC8(sp, O_SHELL, 1) || FUNC8(sp, O_SHELLMETA, 1))
		n = 0;
	else {
		p = bp + SHELLOFFSET;
		n = len - SHELLOFFSET;
		for (; n > 0; --n, ++p)
			if (FUNC2(sp, *p))
				break;
	}

	/*
	 * If we found a meta character in the string, fork a shell to expand
	 * it.  Unfortunately, this is comparatively slow.  Historically, it
	 * didn't matter much, since users don't enter meta characters as part
	 * of pathnames that frequently.  The addition of filename completion
	 * broke that assumption because it's easy to use.  To increase the
	 * completion performance, nvi used to have an internal routine to
	 * handle "filename*".  However, the shell special characters does not
	 * limit to "shellmeta", so such a hack breaks historic practice.
	 * After it all, we split the completion logic out from here.
	 */
	switch (n) {
	case 0:
		p = bp + SHELLOFFSET;
		len -= SHELLOFFSET;
		rval = FUNC5(sp, excp, p, len);
		break;
	default:
		if (FUNC7(sp, &bp, &blen, &len)) {
			rval = 1;
			goto err;
		}
		p = bp;
		rval = FUNC5(sp, excp, p, len);
		break;
	}

err:	FUNC0(sp, bp, blen);
	return (rval);
}
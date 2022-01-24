#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_7__ {int gl_flags; int /*<<< orphan*/  gl_matchc; } ;
typedef  TYPE_1__ glob_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ CHAR_EOS ; 
 scalar_t__ CHAR_SEP ; 
 int GLOB_MARK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,struct stat*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,struct stat*,TYPE_1__*) ; 
 int FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,size_t*) ; 
 int FUNC5 (scalar_t__*,TYPE_1__*,size_t*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(Char *pathbuf, Char *pathend, Char *pattern, glob_t *pglob,
      size_t *limit)
{
	struct stat sb;
	Char *p, *q;
	int anymeta;

	/*
	 * Loop over pattern segments until end of pattern or until
	 * segment with meta character found.
	 */
	for (anymeta = 0;;) {
		if (*pattern == CHAR_EOS) {		/* End of pattern? */
			*pathend = CHAR_EOS;
			if (FUNC2(pathbuf, &sb, pglob))
				return(0);

			if (((pglob->gl_flags & GLOB_MARK) &&
			    pathend[-1] != CHAR_SEP) && (FUNC0(sb.st_mode)
			    || (FUNC1(sb.st_mode) &&
			    (FUNC3(pathbuf, &sb, pglob) == 0) &&
			    FUNC0(sb.st_mode)))) {
				*pathend++ = CHAR_SEP;
				*pathend = CHAR_EOS;
			}
			++pglob->gl_matchc;
			return(FUNC5(pathbuf, pglob, limit));
		}

		/* Find end of next segment, copy tentatively to pathend. */
		q = pathend;
		p = pattern;
		while (*p != CHAR_EOS && *p != CHAR_SEP) {
			if (FUNC6(*p))
				anymeta = 1;
			*q++ = *p++;
		}

		if (!anymeta) {		/* No expansion, do next segment. */
			pathend = q;
			pattern = p;
			while (*pattern == CHAR_SEP)
				*pathend++ = *pattern++;
		} else			/* Need expansion, recurse. */
			return(FUNC4(pathbuf, pathend, pattern, p, pglob,
			    limit));
	}
	/* NOTREACHED */
}
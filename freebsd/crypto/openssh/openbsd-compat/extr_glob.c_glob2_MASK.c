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
struct glob_lim {int /*<<< orphan*/  glim_stat; } ;
struct TYPE_7__ {int gl_flags; int /*<<< orphan*/  gl_matchc; } ;
typedef  TYPE_1__ glob_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ EOS ; 
 int GLOB_LIMIT ; 
 scalar_t__ GLOB_LIMIT_STAT ; 
 int GLOB_MARK ; 
 int GLOB_NOSPACE ; 
 scalar_t__ SEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (scalar_t__*,struct stat*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,struct stat*,TYPE_1__*) ; 
 int FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,struct glob_lim*) ; 
 int FUNC5 (scalar_t__*,TYPE_1__*,struct glob_lim*,struct stat*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(Char *pathbuf, Char *pathbuf_last, Char *pathend, Char *pathend_last,
    Char *pattern, Char *pattern_last, glob_t *pglob, struct glob_lim *limitp)
{
	struct stat sb;
	Char *p, *q;
	int anymeta;

	/*
	 * Loop over pattern segments until end of pattern or until
	 * segment with meta character found.
	 */
	for (anymeta = 0;;) {
		if (*pattern == EOS) {		/* End of pattern? */
			*pathend = EOS;
			if (FUNC2(pathbuf, &sb, pglob))
				return(0);

			if ((pglob->gl_flags & GLOB_LIMIT) &&
			    limitp->glim_stat++ >= GLOB_LIMIT_STAT) {
				errno = 0;
				*pathend++ = SEP;
				*pathend = EOS;
				return(GLOB_NOSPACE);
			}

			if (((pglob->gl_flags & GLOB_MARK) &&
			    pathend[-1] != SEP) && (FUNC0(sb.st_mode) ||
			    (FUNC1(sb.st_mode) &&
			    (FUNC3(pathbuf, &sb, pglob) == 0) &&
			    FUNC0(sb.st_mode)))) {
				if (pathend+1 > pathend_last)
					return (1);
				*pathend++ = SEP;
				*pathend = EOS;
			}
			++pglob->gl_matchc;
			return(FUNC5(pathbuf, pglob, limitp, &sb));
		}

		/* Find end of next segment, copy tentatively to pathend. */
		q = pathend;
		p = pattern;
		while (*p != EOS && *p != SEP) {
			if (FUNC6(*p))
				anymeta = 1;
			if (q+1 > pathend_last)
				return (1);
			*q++ = *p++;
		}

		if (!anymeta) {		/* No expansion, do next segment. */
			pathend = q;
			pattern = p;
			while (*pattern == SEP) {
				if (pathend+1 > pathend_last)
					return (1);
				*pathend++ = *pattern++;
			}
		} else
			/* Need expansion, recurse. */
			return(FUNC4(pathbuf, pathbuf_last, pathend,
			    pathend_last, pattern, p, pattern_last,
			    pglob, limitp));
	}
	/* NOTREACHED */
}
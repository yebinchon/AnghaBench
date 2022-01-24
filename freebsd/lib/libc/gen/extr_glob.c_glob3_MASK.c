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
typedef  unsigned char wchar_t ;
struct glob_limit {int /*<<< orphan*/  l_readdir_cnt; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;
struct TYPE_6__ {int gl_flags; int /*<<< orphan*/  (* gl_closedir ) (int /*<<< orphan*/ *) ;scalar_t__ gl_readdir; int /*<<< orphan*/ * gl_errfunc; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;
typedef  unsigned char Char ;

/* Variables and functions */
 scalar_t__ DOT ; 
 int E2BIG ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOTDIR ; 
 unsigned char EOS ; 
 int GLOB_ALTDIRFUNC ; 
 int GLOB_LIMIT ; 
 scalar_t__ GLOB_LIMIT_READDIR ; 
 int GLOB_NOSPACE ; 
 scalar_t__ MAXPATHLEN ; 
 scalar_t__ MB_LEN_MAX ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int,char*) ; 
 int errno ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned char*,TYPE_1__*) ; 
 int FUNC5 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,TYPE_1__*,struct glob_limit*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,unsigned char*) ; 
 size_t FUNC7 (unsigned char*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(Char *pathbuf, Char *pathend, Char *pathend_last,
      Char *pattern, Char *restpattern,
      glob_t *pglob, struct glob_limit *limit)
{
	struct dirent *dp;
	DIR *dirp;
	int err, too_long, saverrno, saverrno2;
	char buf[MAXPATHLEN + MB_LEN_MAX - 1];

	struct dirent *(*readdirfunc)(DIR *);

	if (pathend > pathend_last) {
		errno = E2BIG;
		return (GLOB_NOSPACE);
	}
	*pathend = EOS;
	if (pglob->gl_errfunc != NULL &&
	    FUNC3(pathbuf, buf, sizeof(buf))) {
		errno = E2BIG;
		return (GLOB_NOSPACE);
	}

	saverrno = errno;
	errno = 0;
	if ((dirp = FUNC4(pathbuf, pglob)) == NULL) {
		if (errno == ENOENT || errno == ENOTDIR)
			return (0);
		err = FUNC2(pglob, errno, buf);
		if (errno == 0)
			errno = saverrno;
		return (err);
	}

	err = 0;

	/* pglob->gl_readdir takes a void *, fix this manually */
	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		readdirfunc = (struct dirent *(*)(DIR *))pglob->gl_readdir;
	else
		readdirfunc = readdir;

	errno = 0;
	/* Search directory for matching names. */
	while ((dp = (*readdirfunc)(dirp)) != NULL) {
		char *sc;
		Char *dc;
		wchar_t wc;
		size_t clen;
		mbstate_t mbs;

		if ((pglob->gl_flags & GLOB_LIMIT) &&
		    limit->l_readdir_cnt++ >= GLOB_LIMIT_READDIR) {
			errno = E2BIG;
			err = GLOB_NOSPACE;
			break;
		}

		/* Initial DOT must be matched literally. */
		if (dp->d_name[0] == '.' && FUNC0(*pattern) != DOT) {
			errno = 0;
			continue;
		}
		FUNC8(&mbs, 0, sizeof(mbs));
		dc = pathend;
		sc = dp->d_name;
		too_long = 1;
		while (dc <= pathend_last) {
			clen = FUNC7(&wc, sc, MB_LEN_MAX, &mbs);
			if (clen == (size_t)-1 || clen == (size_t)-2) {
				/* XXX See initial comment #2. */
				wc = (unsigned char)*sc;
				clen = 1;
				FUNC8(&mbs, 0, sizeof(mbs));
			}
			if ((*dc++ = wc) == EOS) {
				too_long = 0;
				break;
			}
			sc += clen;
		}
		if (too_long && (err = FUNC2(pglob, ENAMETOOLONG,
		    buf))) {
			errno = ENAMETOOLONG;
			break;
		}
		if (too_long || !FUNC6(pathend, pattern, restpattern)) {
			*pathend = EOS;
			errno = 0;
			continue;
		}
		if (errno == 0)
			errno = saverrno;
		err = FUNC5(pathbuf, --dc, pathend_last, restpattern,
		    pglob, limit);
		if (err)
			break;
		errno = 0;
	}

	saverrno2 = errno;
	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		(*pglob->gl_closedir)(dirp);
	else
		FUNC1(dirp);
	errno = saverrno2;

	if (err)
		return (err);

	if (dp == NULL && errno != 0 &&
	    (err = FUNC2(pglob, errno, buf)))
		return (err);

	if (errno == 0)
		errno = saverrno;
	return (0);
}
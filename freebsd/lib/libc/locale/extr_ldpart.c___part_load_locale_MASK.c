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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int EFTYPE ; 
 int ENOMEM ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int PATH_MAX ; 
 int _LDP_CACHE ; 
 int _LDP_ERROR ; 
 int _LDP_LOADED ; 
 char const* _PathLocale ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (char*,int) ; 
 size_t FUNC3 (int,char*,size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

int
FUNC12(const char *name,
		int *using_locale,
		char **locale_buf,
		const char *category_filename,
		int locale_buf_size_max,
		int locale_buf_size_min,
		const char **dst_localebuf)
{
	int		saverr, fd, i, num_lines;
	char		*lbuf, *p;
	const char	*plim;
	char		filename[PATH_MAX];
	struct stat	st;
	size_t		namesize, bufsize;

	/* 'name' must be already checked. */
	if (FUNC8(name, "C") == 0 || FUNC8(name, "POSIX") == 0 ||
	    FUNC11(name, "C.", 2) == 0) {
		*using_locale = 0;
		return (_LDP_CACHE);
	}

	/*
	 * If the locale name is the same as our cache, use the cache.
	 */
	if (*locale_buf != NULL && FUNC8(name, *locale_buf) == 0) {
		*using_locale = 1;
		return (_LDP_CACHE);
	}

	/*
	 * Slurp the locale file into the cache.
	 */
	namesize = FUNC10(name) + 1;

	/* 'PathLocale' must be already set & checked. */

	/* Range checking not needed, 'name' size is limited */
	FUNC9(filename, _PathLocale);
	FUNC7(filename, "/");
	FUNC7(filename, name);
	FUNC7(filename, "/");
	FUNC7(filename, category_filename);
	if ((fd = FUNC2(filename, O_RDONLY | O_CLOEXEC)) < 0)
		return (_LDP_ERROR);
	if (FUNC1(fd, &st) != 0)
		goto bad_locale;
	if (st.st_size <= 0) {
		errno = EFTYPE;
		goto bad_locale;
	}
	bufsize = namesize + st.st_size;
	if ((lbuf = FUNC5(bufsize)) == NULL) {
		errno = ENOMEM;
		goto bad_locale;
	}
	(void)FUNC9(lbuf, name);
	p = lbuf + namesize;
	plim = p + st.st_size;
	if (FUNC3(fd, p, (size_t) st.st_size) != st.st_size)
		goto bad_lbuf;
	/*
	 * Parse the locale file into localebuf.
	 */
	if (plim[-1] != '\n') {
		errno = EFTYPE;
		goto bad_lbuf;
	}
	num_lines = FUNC6(p, plim);
	if (num_lines >= locale_buf_size_max)
		num_lines = locale_buf_size_max;
	else if (num_lines >= locale_buf_size_min)
		num_lines = locale_buf_size_min;
	else {
		errno = EFTYPE;
		goto bad_lbuf;
	}
	(void)FUNC0(fd);
	/*
	 * Record the successful parse in the cache.
	 */
	if (*locale_buf != NULL)
		FUNC4(*locale_buf);
	*locale_buf = lbuf;
	for (p = *locale_buf, i = 0; i < num_lines; i++)
		dst_localebuf[i] = (p += FUNC10(p) + 1);
	for (i = num_lines; i < locale_buf_size_max; i++)
		dst_localebuf[i] = NULL;
	*using_locale = 1;

	return (_LDP_LOADED);

bad_lbuf:
	saverr = errno;
	FUNC4(lbuf);
	errno = saverr;
bad_locale:
	saverr = errno;
	(void)FUNC0(fd);
	errno = saverr;

	return (_LDP_ERROR);
}
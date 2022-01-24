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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

char *
FUNC5(const char *path, const char *base, char *result, const size_t size)
{
	const char *pp, *bp;
	/*
	 * endp points the last position which is safe in the result buffer.
	 */
	const char *endp = result + size - 1;
	char *rp;
	size_t length;

	if (*path == '/') {
		if (FUNC2(path) >= size)
			goto erange;
		FUNC1(result, path);
		goto finish;
	} else if (*base != '/' || !size) {
		errno = EINVAL;
		return (NULL);
	} else if (size == 1)
		goto erange;

	length = FUNC2(base);

	if (!FUNC0(path, ".") || !FUNC0(path, "./")) {
		if (length >= size)
			goto erange;
		FUNC1(result, base);
		/*
		 * rp points the last char.
		 */
		rp = result + length - 1;
		/*
		 * remove the last '/'.
		 */
		if (*rp == '/') {
			if (length > 1)
				*rp = 0;
		} else
			rp++;
		/* rp point NULL char */
		if (*++path == '/') {
			/*
			 * Append '/' to the tail of path name.
			 */
			*rp++ = '/';
			if (rp > endp)
				goto erange;
			*rp = 0;
		}
		goto finish;
	}
	bp = base + length;
	if (*(bp - 1) == '/')
		--bp;
	/*
	 * up to root.
	 */
	for (pp = path; *pp && *pp == '.'; ) {
		if (!FUNC3(pp, "../", 3)) {
			pp += 3;
			while (bp > base && *--bp != '/')
				;
		} else if (!FUNC3(pp, "./", 2)) {
			pp += 2;
		} else if (!FUNC3(pp, "..\0", 3)) {
			pp += 2;
			while (bp > base && *--bp != '/')
				;
		} else
			break;
	}
	/*
	 * down to leaf.
	 */
	length = bp - base;
	if (length >= size)
		goto erange;
	FUNC4(result, base, length);
	rp = result + length;
	if (*pp || *(pp - 1) == '/' || length == 0)
		*rp++ = '/';
	if (rp + FUNC2(pp) > endp)
		goto erange;
	FUNC1(rp, pp);
finish:
	return result;
erange:
	errno = ERANGE;
	return (NULL);
}
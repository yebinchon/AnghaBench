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
struct TYPE_7__ {size_t _r; unsigned char* _p; int /*<<< orphan*/  _flags; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  __SERR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 unsigned char* FUNC5 (void*,char,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,size_t) ; 

char *
FUNC7(char * __restrict buf, int n, FILE * __restrict fp)
{
	size_t len;
	char *s, *ret;
	unsigned char *p, *t;

	FUNC0(fp);
	FUNC2(fp, -1);

	if (n <= 0) {		/* sanity check */
		fp->_flags |= __SERR;
		errno = EINVAL;
		ret = NULL;
		goto end;
	}

	s = buf;
	n--;			/* leave space for NUL */
	while (n != 0) {
		/*
		 * If the buffer is empty, refill it.
		 */
		if ((len = fp->_r) <= 0) {
			if (FUNC4(fp)) {
				/* EOF/error: stop with partial or no line */
				if (!FUNC3(fp) || s == buf) {
					ret = NULL;
					goto end;
				}
				break;
			}
			len = fp->_r;
		}
		p = fp->_p;

		/*
		 * Scan through at most n bytes of the current buffer,
		 * looking for '\n'.  If found, copy up to and including
		 * newline, and stop.  Otherwise, copy entire chunk
		 * and loop.
		 */
		if (len > n)
			len = n;
		t = FUNC5((void *)p, '\n', len);
		if (t != NULL) {
			len = ++t - p;
			fp->_r -= len;
			fp->_p = t;
			(void)FUNC6((void *)s, (void *)p, len);
			s[len] = 0;
			ret = buf;
			goto end;
		}
		fp->_r -= len;
		fp->_p += len;
		(void)FUNC6((void *)s, (void *)p, len);
		s += len;
		n -= len;
	}
	*s = 0;
	ret = buf;
end:
	FUNC1();
	return (ret);
}
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
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ssize_t ;
struct TYPE_7__ {scalar_t__ _r; int /*<<< orphan*/  _flags; int /*<<< orphan*/ * _p; } ;
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
 scalar_t__ FUNC5 (char**,int,size_t*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC7 (char**,size_t*,size_t*,int /*<<< orphan*/ *,int) ; 

ssize_t
FUNC8(char ** __restrict linep, size_t * __restrict linecapp, int delim,
	 FILE * __restrict fp)
{
	u_char *endp;
	size_t linelen;

	FUNC0(fp);
	FUNC2(fp, -1);

	if (linep == NULL || linecapp == NULL) {
		errno = EINVAL;
		goto error;
	}

	if (*linep == NULL)
		*linecapp = 0;

	if (fp->_r <= 0 && FUNC4(fp)) {
		/* If fp is at EOF already, we just need space for the NUL. */
		if (!FUNC3(fp) || FUNC5(linep, 1, linecapp))
			goto error;
		(*linep)[0] = '\0';
		linelen = -1;
		goto end;
	}

	linelen = 0;
	while ((endp = FUNC6(fp->_p, delim, fp->_r)) == NULL) {
		if (FUNC7(linep, &linelen, linecapp, fp->_p, fp->_r))
			goto error;
		if (FUNC4(fp)) {
			if (!FUNC3(fp))
				goto error;
			goto done;	/* hit EOF */
		}
	}
	endp++;	/* snarf the delimiter, too */
	if (FUNC7(linep, &linelen, linecapp, fp->_p, endp - fp->_p))
		goto error;
	fp->_r -= endp - fp->_p;
	fp->_p = endp;
done:
	/* Invariant: *linep has space for at least linelen+1 bytes. */
	(*linep)[linelen] = '\0';
end:
	FUNC1();
	return (linelen);

error:
	fp->_flags |= __SERR;
	linelen = -1;
	goto end;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ _base; } ;
struct TYPE_10__ {size_t _r; unsigned char* _p; int /*<<< orphan*/  _flags; TYPE_1__ _lb; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t OPTIMISTIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  __SERR ; 
 int /*<<< orphan*/  __SMOD ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 unsigned char* FUNC6 (void*,char,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,size_t) ; 

char *
FUNC8(FILE *fp, size_t *lenp)
{
	unsigned char *p;
	char *ret;
	size_t len;
	size_t off;

	FUNC0(fp);
	FUNC2(fp, -1);
	/* make sure there is input */
	if (fp->_r <= 0 && FUNC5(fp)) {
		*lenp = 0;
		ret = NULL;
		goto end;
	}

	/* look for a newline in the input */
	if ((p = FUNC6((void *)fp->_p, '\n', (size_t)fp->_r)) != NULL) {
		/*
		 * Found one.  Flag buffer as modified to keep fseek from
		 * `optimising' a backward seek, in case the user stomps on
		 * the text.
		 */
		p++;		/* advance over it */
		ret = (char *)fp->_p;
		*lenp = len = p - fp->_p;
		fp->_flags |= __SMOD;
		fp->_r -= len;
		fp->_p = p;
		goto end;
	}

	/*
	 * We have to copy the current buffered data to the line buffer.
	 * As a bonus, though, we can leave off the __SMOD.
	 *
	 * OPTIMISTIC is length that we (optimistically) expect will
	 * accommodate the `rest' of the string, on each trip through the
	 * loop below.
	 */
#define OPTIMISTIC 80

	for (len = fp->_r, off = 0;; len += fp->_r) {
		size_t diff;

		/*
		 * Make sure there is room for more bytes.  Copy data from
		 * file buffer to line buffer, refill file and look for
		 * newline.  The loop stops only when we find a newline.
		 */
		if (FUNC4(fp, len + OPTIMISTIC))
			goto error;
		(void)FUNC7((void *)(fp->_lb._base + off), (void *)fp->_p,
		    len - off);
		off = len;
		if (FUNC5(fp)) {
			if (FUNC3(fp))
				break;
			goto error;
		}
		if ((p = FUNC6((void *)fp->_p, '\n', (size_t)fp->_r)) == NULL)
			continue;

		/* got it: finish up the line (like code above) */
		p++;
		diff = p - fp->_p;
		len += diff;
		if (FUNC4(fp, len))
			goto error;
		(void)FUNC7((void *)(fp->_lb._base + off), (void *)fp->_p,
		    diff);
		fp->_r -= diff;
		fp->_p = p;
		break;
	}
	*lenp = len;
	ret = (char *)fp->_lb._base;
end:
	FUNC1();
	return (ret);

error:
	*lenp = 0;		/* ??? */
	fp->_flags |= __SERR;
	ret = NULL;
	goto end;
}
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
typedef  int wint_t ;
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_9__ {size_t _size; scalar_t__ _base; } ;
struct TYPE_10__ {int _flags; TYPE_1__ _lb; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t GROW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int WEOF ; 
 int __SERR ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 

wchar_t *
FUNC7(FILE * __restrict fp, size_t *lenp, locale_t locale)
{
	wchar_t *ret;
	wint_t wc;
	size_t len;
	int savserr;

	FUNC0(locale);

	FUNC1(fp);
	FUNC3(fp, 1);

	savserr = fp->_flags & __SERR;
	fp->_flags &= ~__SERR;

	len = 0;
	while ((wc = FUNC4(fp, locale)) != WEOF) {
#define	GROW	512
		if (len * sizeof(wchar_t) >= fp->_lb._size &&
		    FUNC6(fp, (len + GROW) * sizeof(wchar_t))) {
			fp->_flags |= __SERR;
			goto error;
		}
		*((wchar_t *)fp->_lb._base + len++) = wc;
		if (wc == L'\n')
			break;
	}
	/* fgetwc(3) may set both __SEOF and __SERR at once. */
	if (FUNC5(fp))
		goto error;

	fp->_flags |= savserr;
	if (len == 0)
		goto error;

	*lenp = len;
	ret = (wchar_t *)fp->_lb._base;
end:
	FUNC2();
	return (ret);

error:
	*lenp = 0;
	ret = NULL;
	goto end;
}
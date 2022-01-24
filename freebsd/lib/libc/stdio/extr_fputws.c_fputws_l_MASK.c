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
typedef  int /*<<< orphan*/  wchar_t ;
struct xlocale_ctype {size_t (* __wcsnrtombs ) (char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct __suio {int uio_iovcnt; size_t uio_resid; struct __siov* uio_iov; } ;
struct __siov {char* iov_base; size_t iov_len; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/  _mbstate; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  SIZE_T_MAX ; 
 struct xlocale_ctype* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct __suio*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 (char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC8(const wchar_t * __restrict ws, FILE * __restrict fp, locale_t locale)
{
	size_t nbytes;
	char buf[BUFSIZ];
	struct __suio uio;
	struct __siov iov;
	const wchar_t *wsp;
	FUNC0(locale);
	struct xlocale_ctype *l = FUNC4(locale);
	int ret;

	ret = -1;
	FUNC1(fp);
	FUNC3(fp, 1);
	if (FUNC6(fp) != 0)
		goto end;
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	iov.iov_base = buf;
	wsp = ws;
	do {
		nbytes = l->__wcsnrtombs(buf, &wsp, SIZE_T_MAX, sizeof(buf),
		    &fp->_mbstate);
		if (nbytes == (size_t)-1)
			goto end;
		uio.uio_resid = iov.iov_len = nbytes;
		if (FUNC5(fp, &uio) != 0)
			goto end;
	} while (wsp != NULL);
	ret = 0;
end:
	FUNC2();
	return (ret);
}
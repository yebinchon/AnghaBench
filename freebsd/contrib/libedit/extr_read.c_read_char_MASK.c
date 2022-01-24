#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;
struct TYPE_7__ {int /*<<< orphan*/  el_infd; TYPE_1__* el_signal; } ;
struct TYPE_6__ {int sig_no; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  EL_REFRESH ; 
 int MB_LEN_MAX ; 
#define  SIGCONT 129 
#define  SIGWINCH 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int*,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(EditLine *el, wchar_t *cp)
{
	ssize_t num_read;
	int tried = 0;
	char cbuf[MB_LEN_MAX];
	size_t cbp = 0;
	int save_errno = errno;

 again:
	el->el_signal->sig_no = 0;
	while ((num_read = FUNC3(el->el_infd, cbuf + cbp, (size_t)1)) == -1) {
		int e = errno;
		switch (el->el_signal->sig_no) {
		case SIGCONT:
			FUNC0(el, EL_REFRESH);
			/*FALLTHROUGH*/
		case SIGWINCH:
			FUNC5(el);
			goto again;
		default:
			break;
		}
		if (!tried && FUNC4(el->el_infd, e) == 0) {
			errno = save_errno;
			tried = 1;
		} else {
			errno = e;
			*cp = L'\0';
			return -1;
		}
	}

	/* Test for EOF */
	if (num_read == 0) {
		*cp = L'\0';
		return 0;
	}

	for (;;) {
		mbstate_t mbs;

		++cbp;
		/* This only works because UTF8 is stateless. */
		FUNC2(&mbs, 0, sizeof(mbs));
		switch (FUNC1(cp, cbuf, cbp, &mbs)) {
		case (size_t)-1:
			if (cbp > 1) {
				/*
				 * Invalid sequence, discard all bytes
				 * except the last one.
				 */
				cbuf[0] = cbuf[cbp - 1];
				cbp = 0;
				break;
			} else {
				/* Invalid byte, discard it. */
				cbp = 0;
				goto again;
			}
		case (size_t)-2:
			if (cbp >= MB_LEN_MAX) {
				errno = EILSEQ;
				*cp = L'\0';
				return -1;
			}
			/* Incomplete sequence, read another byte. */
			goto again;
		default:
			/* Valid character, process it. */
			return 1;
		}
	}
}
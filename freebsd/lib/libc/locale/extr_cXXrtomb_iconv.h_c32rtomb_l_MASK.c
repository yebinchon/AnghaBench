#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _citrus_iconv {TYPE_1__* cv_shared; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  charXX_t ;
struct TYPE_6__ {char* bytes; int /*<<< orphan*/ * widechar; } ;
struct TYPE_7__ {int initialized; int srcbuf_len; TYPE_2__ srcbuf; struct _citrus_iconv iconv; } ;
typedef  TYPE_3__ _ConversionState ;
struct TYPE_8__ {int /*<<< orphan*/  cXXrtomb; } ;
struct TYPE_5__ {int ci_discard_ilseq; int /*<<< orphan*/ * ci_hooks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODESET ; 
 int EILSEQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTF_XX_INTERNAL ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (struct _citrus_iconv**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t
FUNC7(char * __restrict s, charXX_t c, mbstate_t * __restrict ps,
    locale_t locale)
{
	_ConversionState *cs;
	struct _citrus_iconv *handle;
	char *src, *dst;
	size_t srcleft, dstleft, invlen;
	int err;

	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC2(locale)->cXXrtomb);
	cs = (_ConversionState *)ps;
	handle = &cs->iconv;

	/* Reinitialize mbstate_t. */
	if (s == NULL || !cs->initialized) {
		if (FUNC4(&handle, UTF_XX_INTERNAL,
		    FUNC6(CODESET, locale)) != 0) {
			cs->initialized = false;
			errno = EINVAL;
			return (-1);
		}
		handle->cv_shared->ci_discard_ilseq = true;
		handle->cv_shared->ci_hooks = NULL;
		cs->srcbuf_len = 0;
		cs->initialized = true;
		if (s == NULL)
			return (1);
	}

	FUNC5(cs->srcbuf_len < sizeof(cs->srcbuf.widechar) / sizeof(charXX_t));
	cs->srcbuf.widechar[cs->srcbuf_len++] = c;

	/* Perform conversion. */
	src = cs->srcbuf.bytes;
	srcleft = cs->srcbuf_len * sizeof(charXX_t);
	dst = s;
	dstleft = FUNC1(locale);
	err = FUNC3(handle, &src, &srcleft, &dst, &dstleft,
	    0, &invlen);

	/* Character is part of a surrogate pair. We need more input. */
	if (err == EINVAL)
		return (0);
	cs->srcbuf_len = 0;
	
	/* Illegal sequence. */
	if (dst == s) {
		errno = EILSEQ;
		return ((size_t)-1);
	}
	return (dst - s);
}
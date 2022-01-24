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
typedef  scalar_t__ charXX_t ;
struct TYPE_6__ {char* bytes; scalar_t__* widechar; } ;
struct TYPE_7__ {int initialized; int srcbuf_len; int dstbuf_len; char* srcbuf; TYPE_2__ dstbuf; struct _citrus_iconv iconv; } ;
typedef  TYPE_3__ _ConversionState ;
struct TYPE_8__ {int /*<<< orphan*/  mbrtocXX; } ;
struct TYPE_5__ {int ci_discard_ilseq; int /*<<< orphan*/ * ci_hooks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODESET ; 
 int E2BIG ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTF_XX_INTERNAL ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC3 (struct _citrus_iconv**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t
FUNC8(charXX_t * __restrict pc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{
	_ConversionState *cs;
	struct _citrus_iconv *handle;
	size_t i, retval;
	charXX_t retchar;

	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC1(locale)->mbrtocXX);
	cs = (_ConversionState *)ps;
	handle = &cs->iconv;

	/* Reinitialize mbstate_t. */
	if (s == NULL || !cs->initialized) {
		if (FUNC3(&handle,
		    FUNC7(CODESET, locale), UTF_XX_INTERNAL) != 0) {
			cs->initialized = false;
			errno = EINVAL;
			return (-1);
		}
		handle->cv_shared->ci_discard_ilseq = true;
		handle->cv_shared->ci_hooks = NULL;
		cs->srcbuf_len = cs->dstbuf_len = 0;
		cs->initialized = true;
		if (s == NULL)
			return (0);
	}

	/* See if we still have characters left from the previous invocation. */
	if (cs->dstbuf_len > 0) {
		retval = (size_t)-3;
		goto return_char;
	}

	/* Fill up the read buffer as far as possible. */
	if (n > sizeof(cs->srcbuf) - cs->srcbuf_len)
		n = sizeof(cs->srcbuf) - cs->srcbuf_len;
	FUNC5(cs->srcbuf + cs->srcbuf_len, s, n);

	/* Convert as few characters to the dst buffer as possible. */
	for (i = 0; ; i++) {
		char *src, *dst;
		size_t srcleft, dstleft, invlen;
		int err;

		src = cs->srcbuf;
		srcleft = cs->srcbuf_len + n;
		dst = cs->dstbuf.bytes;
		dstleft = i * sizeof(charXX_t);
		FUNC4(srcleft <= sizeof(cs->srcbuf) &&
		    dstleft <= sizeof(cs->dstbuf.bytes));
		err = FUNC2(handle, &src, &srcleft,
		    &dst, &dstleft, 0, &invlen);
		cs->dstbuf_len = (dst - cs->dstbuf.bytes) / sizeof(charXX_t);

		/* Got new character(s). Return the first. */
		if (cs->dstbuf_len > 0) {
			FUNC4(src - cs->srcbuf > cs->srcbuf_len);
			retval = src - cs->srcbuf - cs->srcbuf_len;
			cs->srcbuf_len = 0;
			goto return_char;
		}

		/* Increase dst buffer size, to obtain the surrogate pair. */
		if (err == E2BIG)
			continue;

		/* Illegal sequence. */
		if (invlen > 0) {
			cs->srcbuf_len = 0;
			errno = EILSEQ;
			return ((size_t)-1);
		}

		/* Save unprocessed remainder for the next invocation. */
		FUNC6(cs->srcbuf, src, srcleft);
		cs->srcbuf_len = srcleft;
		return ((size_t)-2);
	}

return_char:
	retchar = cs->dstbuf.widechar[0];
	FUNC6(&cs->dstbuf.widechar[0], &cs->dstbuf.widechar[1],
	    --cs->dstbuf_len * sizeof(charXX_t));
	if (pc != NULL)
		*pc = retchar;
	if (retchar == 0)
		return (0);
	return (retval);
}
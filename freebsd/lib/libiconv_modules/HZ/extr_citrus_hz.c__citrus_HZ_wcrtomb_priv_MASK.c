#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int uint32_t ;
struct TYPE_18__ {int start; int end; } ;
typedef  TYPE_1__ range_t ;
struct TYPE_19__ {size_t length; scalar_t__ charset; TYPE_3__* escape; } ;
typedef  TYPE_2__ graphic_t ;
struct TYPE_20__ {TYPE_2__* right; TYPE_2__* left; } ;
typedef  TYPE_3__ escape_t ;
struct TYPE_21__ {scalar_t__ chlen; int* ch; TYPE_3__* inuse; } ;
typedef  TYPE_4__ _HZState ;
struct TYPE_22__ {TYPE_2__* gb2312; TYPE_2__* ascii; } ;
typedef  TYPE_5__ _HZEncodingInfo ;

/* Variables and functions */
 scalar_t__ CTRL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int E2BIG ; 
 int EILSEQ ; 
 int EINVAL ; 
 void* FUNC2 (TYPE_3__*) ; 
 void* ESCAPE_CHAR ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*,scalar_t__) ; 
 TYPE_1__* ranges ; 

__attribute__((used)) static int
FUNC8(_HZEncodingInfo * __restrict ei,
    char * __restrict s, size_t n, wchar_t wc,
    _HZState * __restrict psenc, size_t * __restrict nresult)
{
	escape_t *candidate, *init;
	graphic_t *graphic;
	const range_t *range;
	size_t len;
	int bit, ch;

	if (psenc->chlen != 0 || psenc->inuse == NULL)
		return (EINVAL);
	if (wc & 0x80) {
		bit = 0x80;
		wc &= ~0x80;
	} else {
		bit = 0x0;
	}
	if ((uint32_t)wc <= 0x1F) {
		candidate = FUNC4(ei);
		graphic = (bit == 0) ? candidate->left : candidate->right;
		if (graphic == NULL)
			goto ilseq;
		range = &ranges[(size_t)CTRL];
		len = 1;
	} else if ((uint32_t)wc <= 0x7F) {
		graphic = ei->ascii;
		if (graphic == NULL)
			goto ilseq;
		candidate = graphic->escape;
		range = &ranges[(size_t)graphic->charset];
		len = graphic->length;
	} else if ((uint32_t)wc <= 0x7F7F) {
		graphic = ei->gb2312;
		if (graphic == NULL)
			goto ilseq;
		candidate = graphic->escape;
		range = &ranges[(size_t)graphic->charset];
		len = graphic->length;
	} else {
		ch = (wc >> 24) & 0xFF;
		candidate = FUNC6(FUNC0(ei), ch);
		if (candidate == NULL) {
			candidate = FUNC6(FUNC1(ei), ch);
			if (candidate == NULL)
				goto ilseq;
		}
		wc &= ~0xFF000000;
		graphic = (bit == 0) ? candidate->left : candidate->right;
		if (graphic == NULL)
			goto ilseq;
		range = &ranges[(size_t)graphic->charset];
		len = graphic->length;
	}
	if (psenc->inuse != candidate) {
		init = FUNC4(ei);
		if (FUNC5(psenc->inuse) == FUNC5(candidate)) {
			if (FUNC3(psenc->inuse) != init ||
			    psenc->inuse == init || candidate == init)
				init = NULL;
		} else if (candidate == (init = FUNC3(candidate))) {
			init = NULL;
		}
		if (init != NULL) {
			if (n < 2)
				return (E2BIG);
			n -= 2;
			psenc->ch[psenc->chlen++] = ESCAPE_CHAR;
			psenc->ch[psenc->chlen++] = FUNC2(init);
		}
		if (n < 2)
			return (E2BIG);
		n -= 2;
		psenc->ch[psenc->chlen++] = ESCAPE_CHAR;
		psenc->ch[psenc->chlen++] = FUNC2(candidate);
		psenc->inuse = candidate;
	}
	if (n < len)
		return (E2BIG);
	while (len-- > 0) {
		ch = (wc >> (len * 8)) & 0xFF;
		if (range->start > ch || range->end < ch)
			goto ilseq;
		psenc->ch[psenc->chlen++] = ch | bit;
	}
	FUNC7(s, psenc->ch, psenc->chlen);
	*nresult = psenc->chlen;
	psenc->chlen = 0;

	return (0);

ilseq:
	*nresult = (size_t)-1;
	return (EILSEQ);
}
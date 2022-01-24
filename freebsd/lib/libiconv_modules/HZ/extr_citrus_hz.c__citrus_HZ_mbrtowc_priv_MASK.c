#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
struct TYPE_9__ {int start; int end; } ;
typedef  TYPE_1__ range_t ;
struct TYPE_10__ {scalar_t__ charset; int length; } ;
typedef  TYPE_2__ graphic_t ;
typedef  int /*<<< orphan*/  escape_t ;
struct TYPE_11__ {int chlen; int* ch; int /*<<< orphan*/ * inuse; } ;
typedef  TYPE_3__ _HZState ;
typedef  int /*<<< orphan*/  _HZEncodingInfo ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ESCAPE_CHAR ; 
 scalar_t__ GB2312 ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int MB_LEN_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ranges ; 

__attribute__((used)) static int
FUNC9(_HZEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _HZState * __restrict psenc, size_t * __restrict nresult)
{
	escape_t *candidate, *init;
	graphic_t *graphic;
	const range_t *range;
	char *s0;
	wchar_t wc;
	int bit, ch, head, len, tail;

	if (*s == NULL) {
		FUNC7(ei, psenc);
		*nresult = 1;
		return (0);
	}
	s0 = *s;
	if (psenc->chlen < 0 || psenc->inuse == NULL)
		return (EINVAL);

	wc = (wchar_t)0;
	bit = head = tail = 0;
	graphic = NULL;
	for (len = 0; len <= MB_LEN_MAX;) {
		if (psenc->chlen == tail) {
			if (n-- < 1) {
				*s = s0;
				*nresult = (size_t)-2;
				return (0);
			}
			psenc->ch[psenc->chlen++] = *s0++;
			++len;
		}
		ch = (unsigned char)psenc->ch[tail++];
		if (tail == 1) {
			if ((ch & ~0x80) <= 0x1F) {
				if (psenc->inuse != FUNC4(ei))
					break;
				wc = (wchar_t)ch;
				goto done;
			}
			if (ch & 0x80) {
				graphic = FUNC2(psenc->inuse);
				bit = 0x80;
				ch &= ~0x80;
			} else {
				graphic = FUNC1(psenc->inuse);
				if (ch == ESCAPE_CHAR)
					continue;
				bit = 0x0;
			}
			if (graphic == NULL)
				break;
		} else if (tail == 2 && psenc->ch[0] == ESCAPE_CHAR) {
			if (tail < psenc->chlen)
				return (EINVAL);
			if (ch == ESCAPE_CHAR) {
				++head;
			} else if (ch == '\n') {
				if (psenc->inuse != FUNC4(ei))
					break;
				tail = psenc->chlen = 0;
				continue;
			} else {
				candidate = NULL;
				init = FUNC4(ei);
				if (psenc->inuse == init) {
					init = FUNC5(ei);
				} else if (FUNC3(psenc->inuse) == init) {
					if (FUNC0(init) != ch)
						break;
					candidate = init;
				}
				if (candidate == NULL) {
					candidate = FUNC8(
					    FUNC6(psenc->inuse), ch);
					if (candidate == NULL) {
						if (init == NULL ||
						    FUNC0(init) != ch)
							break;
						candidate = init;
					}
				}
				psenc->inuse = candidate;
				tail = psenc->chlen = 0;
				continue;
			}
		} else if (ch & 0x80) {
			if (graphic != FUNC2(psenc->inuse))
				break;
			ch &= ~0x80;
		} else {
			if (graphic != FUNC1(psenc->inuse))
				break;
		}
		range = &ranges[(size_t)graphic->charset];
		if (range->start > ch || range->end < ch)
			break;
		wc <<= 8;
		wc |= ch;
		if (graphic->length == (tail - head)) {
			if (graphic->charset > GB2312)
				bit |= FUNC0(psenc->inuse) << 24;
			wc |= bit;
			goto done;
		}
	}
	*nresult = (size_t)-1;
	return (EILSEQ);
done:
	if (tail < psenc->chlen)
		return (EINVAL);
	*s = s0;
	if (pwc != NULL)
		*pwc = wc;
	psenc->chlen = 0;
	*nresult = (wc == 0) ? 0 : len;

	return (0);
}
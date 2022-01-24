#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int chlen; char* ch; } ;
typedef  TYPE_1__ _UESState ;
struct TYPE_8__ {int mode; } ;
typedef  TYPE_2__ _UESEncodingInfo ;

/* Variables and functions */
 int EILSEQ ; 
 int ESCAPE ; 
 int MODE_C99 ; 
#define  UCS2_ESC 129 
#define  UCS4_ESC 128 
 int UCS4_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(_UESEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _UESState * __restrict psenc, size_t * __restrict nresult)
{
	char *s0;
	int ch, head, num, tail;
	wchar_t hi, wc;

	if (*s == NULL) {
		FUNC0(ei, psenc);
		*nresult = 0;
		return (0);
	}
	s0 = *s;

	hi = (wchar_t)0;
	tail = 0;

surrogate:
	wc = (wchar_t)0;
	head = tail;
	if (psenc->chlen == head) {
		if (n-- < 1)
			goto restart;
		psenc->ch[psenc->chlen++] = *s0++;
	}
	ch = (unsigned char)psenc->ch[head++];
	if (ch == ESCAPE) {
		if (psenc->chlen == head) {
			if (n-- < 1)
				goto restart;
			psenc->ch[psenc->chlen++] = *s0++;
		}
		switch (psenc->ch[head]) {
		case UCS2_ESC:
			tail += 6;
			break;
		case UCS4_ESC:
			if (ei->mode & MODE_C99) {
				tail = 10;
				break;
			}
		/*FALLTHROUGH*/
		default:
			tail = 0;
		}
		++head;
	}
	for (; head < tail; ++head) {
		if (psenc->chlen == head) {
			if (n-- < 1) {
restart:
				*s = s0;
				*nresult = (size_t)-2;
				return (0);
			}
			psenc->ch[psenc->chlen++] = *s0++;
		}
		num = FUNC6((int)(unsigned char)psenc->ch[head]);
		if (num < 0) {
			tail = 0;
			break;
		}
		wc = (wc << 4) | num;
	}
	head = 0;
	switch (tail) {
	case 0:
		break;
	case 6:
		if (hi != (wchar_t)0)
			break;
		if ((ei->mode & MODE_C99) == 0) {
			if (FUNC2(wc) != 0) {
				hi = wc;
				goto surrogate;
			}
			if ((uint32_t)wc <= 0x7F /* XXX */ ||
			    FUNC3(wc) != 0)
				break;
			goto done;
		}
	/*FALLTHROUGH*/
	case 10:
		if (FUNC1(wc) == 0 && (uint32_t)wc <= UCS4_MAX &&
		    FUNC2(wc) == 0 && FUNC3(wc) == 0)
			goto done;
		*nresult = (size_t)-1;
		return (EILSEQ);
	case 12:
		if (FUNC3(wc) == 0)
			break;
		wc = FUNC5(hi, wc);
		goto done;
	}
	ch = (unsigned char)psenc->ch[0];
	head = psenc->chlen;
	if (--head > 0)
		FUNC4(&psenc->ch[0], &psenc->ch[1], head);
	wc = (wchar_t)ch;
done:
	psenc->chlen = head;
	if (pwc != NULL)
		*pwc = wc;
	*nresult = (size_t)((wc == 0) ? 0 : (s0 - *s));
	*s = s0;

	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; char* buf; } ;
typedef  char Char ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 char const CHAR ; 
 char FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  MB_LEN_MAX ; 
 int* _toascii ; 
 int /*<<< orphan*/ * _toebcdic ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char) ; 
 unsigned char* FUNC6 (int) ; 

unsigned char *
FUNC7(const CStr *str, const Char *sep)
{
    unsigned char *buf, *b;
    Char   p;
    int l;

    /* Worst-case is "\uuu" or result of wctomb() for each char from str */
    buf = FUNC6((str->len + 1) * FUNC4(4, MB_LEN_MAX));
    b = buf;
    if (sep[0])
#ifndef WINNT_NATIVE
	*b++ = sep[0];
#else /* WINNT_NATIVE */
	*b++ = CHAR & sep[0];
#endif /* !WINNT_NATIVE */

    for (l = 0; l < str->len; l++) {
	p = str->buf[l];
	if (FUNC1(p)) {
	    *b++ = '^';
	    if (p == FUNC0('\177'))
		*b++ = '?';
	    else
#ifdef IS_ASCII
		*b++ = (unsigned char) (p | 0100);
#else
		*b++ = _toebcdic[_toascii[p]|0100];
#endif
	}
	else if (p == '^' || p == '\\') {
	    *b++ = '\\';
	    *b++ = (unsigned char) p;
	}
	else if (p == ' ' || (FUNC2(p) && !FUNC3(p)))
	    b += FUNC5((char *)b, p);
	else {
	    *b++ = '\\';
	    *b++ = ((p >> 6) & 7) + '0';
	    *b++ = ((p >> 3) & 7) + '0';
	    *b++ = (p & 7) + '0';
	}
    }
    if (sep[0] && sep[1])
#ifndef WINNT_NATIVE
	*b++ = sep[1];
#else /* WINNT_NATIVE */
	*b++ = CHAR & sep[1];
#endif /* !WINNT_NATIVE */
    *b++ = 0;
    return buf;			/* should check for overflow */
}
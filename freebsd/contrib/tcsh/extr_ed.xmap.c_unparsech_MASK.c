#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Strbuf {int dummy; } ;
typedef  int Char ;

/* Variables and functions */
 int FUNC0 (char) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct Strbuf*,int) ; 
 int* _toascii ; 
 int* _toebcdic ; 

__attribute__((used)) static void
FUNC5(struct Strbuf *buf, Char ch)
{
    if (ch == 0) {
	FUNC4(buf, '^');
	FUNC4(buf, '@');
    }
    else if (FUNC1(ch)) {
	FUNC4(buf, '^');
	if (ch == FUNC0('\177'))
	    FUNC4(buf, '?');
	else
#ifdef IS_ASCII
	    Strbuf_append1(buf, ch | 0100);
#else
	    FUNC4(buf, _toebcdic[_toascii[ch]|0100]);
#endif
    }
    else if (ch == '^') {
	FUNC4(buf, '\\');
	FUNC4(buf, '^');
    } else if (ch == '\\') {
	FUNC4(buf, '\\');
	FUNC4(buf, '\\');
    } else if (ch == ' ' || (FUNC2(ch) && !FUNC3(ch))) {
	FUNC4(buf, ch);
    }
    else {
	FUNC4(buf, '\\');
	FUNC4(buf, ((ch >> 6) & 7) + '0');
	FUNC4(buf, ((ch >> 3) & 7) + '0');
	FUNC4(buf, (ch & 7) + '0');
    }
}
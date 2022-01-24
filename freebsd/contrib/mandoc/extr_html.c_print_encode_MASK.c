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
struct html {int flags; } ;
typedef  int /*<<< orphan*/  numbuf ;
typedef  enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;

/* Variables and functions */
#define  ASCII_BREAK 147 
#define  ASCII_HYPH 146 
#define  ASCII_NBRSP 145 
#define  ESCAPE_BREAK 144 
#define  ESCAPE_DEVICE 143 
#define  ESCAPE_ERROR 142 
#define  ESCAPE_FONT 141 
#define  ESCAPE_FONTBI 140 
#define  ESCAPE_FONTBOLD 139 
#define  ESCAPE_FONTCW 138 
#define  ESCAPE_FONTITALIC 137 
#define  ESCAPE_FONTPREV 136 
#define  ESCAPE_FONTROMAN 135 
#define  ESCAPE_NOSPACE 134 
#define  ESCAPE_NUMBERED 133 
#define  ESCAPE_OVERSTRIKE 132 
#define  ESCAPE_SKIPCHAR 131 
#define  ESCAPE_SPECIAL 130 
#define  ESCAPE_UNDEF 129 
#define  ESCAPE_UNICODE 128 
 int HTML_NOSPACE ; 
 int HTML_SKIPCHAR ; 
 int /*<<< orphan*/  TAG_BR ; 
 int /*<<< orphan*/  FUNC0 (struct html*,int) ; 
 int FUNC1 (char const**,char const**,int*) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct html*,char const) ; 
 int /*<<< orphan*/  FUNC6 (struct html*) ; 
 scalar_t__ FUNC7 (struct html*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct html*) ; 
 int /*<<< orphan*/  FUNC9 (struct html*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct html*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 char* FUNC12 (char const*,char) ; 
 size_t FUNC13 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC14(struct html *h, const char *p, const char *pend, int norecurse)
{
	char		 numbuf[16];
	const char	*seq;
	size_t		 sz;
	int		 c, len, breakline, nospace;
	enum mandoc_esc	 esc;
	static const char rejs[10] = { ' ', '\\', '<', '>', '&', '"',
		ASCII_NBRSP, ASCII_HYPH, ASCII_BREAK, '\0' };

	if (pend == NULL)
		pend = FUNC12(p, '\0');

	breakline = 0;
	nospace = 0;

	while (p < pend) {
		if (HTML_SKIPCHAR & h->flags && '\\' != *p) {
			h->flags &= ~HTML_SKIPCHAR;
			p++;
			continue;
		}

		for (sz = FUNC13(p, rejs); sz-- && p < pend; p++)
			FUNC5(h, *p);

		if (breakline &&
		    (p >= pend || *p == ' ' || *p == ASCII_NBRSP)) {
			FUNC9(h, TAG_BR, "");
			breakline = 0;
			while (p < pend && (*p == ' ' || *p == ASCII_NBRSP))
				p++;
			continue;
		}

		if (p >= pend)
			break;

		if (*p == ' ') {
			FUNC6(h);
			p++;
			continue;
		}

		if (FUNC7(h, *p++))
			continue;

		esc = FUNC1(&p, &seq, &len);
		switch (esc) {
		case ESCAPE_FONT:
		case ESCAPE_FONTPREV:
		case ESCAPE_FONTBOLD:
		case ESCAPE_FONTITALIC:
		case ESCAPE_FONTBI:
		case ESCAPE_FONTCW:
		case ESCAPE_FONTROMAN:
			if (0 == norecurse) {
				h->flags |= HTML_NOSPACE;
				if (FUNC0(h, esc))
					FUNC8(h);
				h->flags &= ~HTML_NOSPACE;
			}
			continue;
		case ESCAPE_SKIPCHAR:
			h->flags |= HTML_SKIPCHAR;
			continue;
		case ESCAPE_ERROR:
			continue;
		default:
			break;
		}

		if (h->flags & HTML_SKIPCHAR) {
			h->flags &= ~HTML_SKIPCHAR;
			continue;
		}

		switch (esc) {
		case ESCAPE_UNICODE:
			/* Skip past "u" header. */
			c = FUNC3(seq + 1, len - 1);
			break;
		case ESCAPE_NUMBERED:
			c = FUNC2(seq, len);
			if (c < 0)
				continue;
			break;
		case ESCAPE_SPECIAL:
			c = FUNC4(seq, len);
			if (c <= 0)
				continue;
			break;
		case ESCAPE_UNDEF:
			c = *seq;
			break;
		case ESCAPE_DEVICE:
			FUNC10(h, "html");
			continue;
		case ESCAPE_BREAK:
			breakline = 1;
			continue;
		case ESCAPE_NOSPACE:
			if ('\0' == *p)
				nospace = 1;
			continue;
		case ESCAPE_OVERSTRIKE:
			if (len == 0)
				continue;
			c = seq[len - 1];
			break;
		default:
			continue;
		}
		if ((c < 0x20 && c != 0x09) ||
		    (c > 0x7E && c < 0xA0))
			c = 0xFFFD;
		if (c > 0x7E) {
			(void)FUNC11(numbuf, sizeof(numbuf), "&#x%.4X;", c);
			FUNC10(h, numbuf);
		} else if (FUNC7(h, c) == 0)
			FUNC5(h, c);
	}

	return nospace;
}
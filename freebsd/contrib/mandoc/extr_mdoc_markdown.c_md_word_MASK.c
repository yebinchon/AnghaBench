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
 int ESC_BOL ; 
 int ESC_EOL ; 
 int ESC_FON ; 
 int ESC_HYP ; 
 int ESC_NUM ; 
 int ESC_SQU ; 
 int MD_spc ; 
 int MD_spc_force ; 
 int /*<<< orphan*/  code_blocks ; 
 int escflags ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const**,int*) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (char const*,int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  outcount ; 
 int outflags ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC12 (char*,char const) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static void
FUNC14(const char *s)
{
	const char	*seq, *prevfont, *currfont, *nextfont;
	char		 c;
	int		 bs, sz, uc, breakline;

	/* No spacing before closing delimiters. */
	if (s[0] != '\0' && s[1] == '\0' &&
	    FUNC12("!),.:;?]", s[0]) != NULL &&
	    (outflags & MD_spc_force) == 0)
		outflags &= ~MD_spc;

	FUNC8();

	if (*s == '\0')
		return;

	/* No spacing after opening delimiters. */
	if ((s[0] == '(' || s[0] == '[') && s[1] == '\0')
		outflags &= ~MD_spc;

	breakline = 0;
	prevfont = currfont = "";
	while ((c = *s++) != '\0') {
		bs = 0;
		switch(c) {
		case ASCII_NBRSP:
			if (code_blocks)
				c = ' ';
			else {
				FUNC7("nbsp");
				c = '\0';
			}
			break;
		case ASCII_HYPH:
			bs = escflags & ESC_BOL && !code_blocks;
			c = '-';
			break;
		case ASCII_BREAK:
			continue;
		case '#':
		case '+':
		case '-':
			bs = escflags & ESC_BOL && !code_blocks;
			break;
		case '(':
			bs = escflags & ESC_HYP && !code_blocks;
			break;
		case ')':
			bs = escflags & ESC_NUM && !code_blocks;
			break;
		case '*':
		case '[':
		case '_':
		case '`':
			bs = !code_blocks;
			break;
		case '.':
			bs = escflags & ESC_NUM && !code_blocks;
			break;
		case '<':
			if (code_blocks == 0) {
				FUNC7("lt");
				c = '\0';
			}
			break;
		case '=':
			if (escflags & ESC_BOL && !code_blocks) {
				FUNC7("equals");
				c = '\0';
			}
			break;
		case '>':
			if (code_blocks == 0) {
				FUNC7("gt");
				c = '\0';
			}
			break;
		case '\\':
			uc = 0;
			nextfont = NULL;
			switch (FUNC1(&s, &seq, &sz)) {
			case ESCAPE_UNICODE:
				uc = FUNC3(seq + 1, sz - 1);
				break;
			case ESCAPE_NUMBERED:
				uc = FUNC2(seq, sz);
				break;
			case ESCAPE_SPECIAL:
				uc = FUNC4(seq, sz);
				break;
			case ESCAPE_UNDEF:
				uc = *seq;
				break;
			case ESCAPE_DEVICE:
				FUNC9("markdown");
				continue;
			case ESCAPE_FONTBOLD:
				nextfont = "**";
				break;
			case ESCAPE_FONTITALIC:
				nextfont = "*";
				break;
			case ESCAPE_FONTBI:
				nextfont = "***";
				break;
			case ESCAPE_FONT:
			case ESCAPE_FONTCW:
			case ESCAPE_FONTROMAN:
				nextfont = "";
				break;
			case ESCAPE_FONTPREV:
				nextfont = prevfont;
				break;
			case ESCAPE_BREAK:
				breakline = 1;
				break;
			case ESCAPE_NOSPACE:
			case ESCAPE_SKIPCHAR:
			case ESCAPE_OVERSTRIKE:
				/* XXX not implemented */
				/* FALLTHROUGH */
			case ESCAPE_ERROR:
			default:
				break;
			}
			if (nextfont != NULL && !code_blocks) {
				if (*currfont != '\0') {
					outflags &= ~MD_spc;
					FUNC9(currfont);
				}
				prevfont = currfont;
				currfont = nextfont;
				if (*currfont != '\0') {
					outflags &= ~MD_spc;
					FUNC9(currfont);
				}
			}
			if (uc) {
				if ((uc < 0x20 && uc != 0x09) ||
				    (uc > 0x7E && uc < 0xA0))
					uc = 0xFFFD;
				if (code_blocks) {
					seq = FUNC5(uc);
					FUNC0(seq, stdout);
					outcount += FUNC13(seq);
				} else {
					FUNC10("&#%d;", uc);
					outcount++;
				}
				escflags &= ~ESC_FON;
			}
			c = '\0';
			break;
		case ']':
			bs = escflags & ESC_SQU && !code_blocks;
			escflags |= ESC_HYP;
			break;
		default:
			break;
		}
		if (bs)
			FUNC11('\\');
		FUNC6(c);
		if (breakline &&
		    (*s == '\0' || *s == ' ' || *s == ASCII_NBRSP)) {
			FUNC10("  \n");
			breakline = 0;
			while (*s == ' ' || *s == ASCII_NBRSP)
				s++;
		}
	}
	if (*currfont != '\0') {
		outflags &= ~MD_spc;
		FUNC9(currfont);
	} else if (s[-2] == ' ')
		escflags |= ESC_EOL;
	else
		escflags &= ~ESC_EOL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct termp {int flags; scalar_t__ enc; int col; int ti; size_t (* width ) (struct termp*,int) ;TYPE_1__* tcol; int /*<<< orphan*/  type; scalar_t__ skipvsp; } ;
struct roffsu {int dummy; } ;
typedef  enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
struct TYPE_2__ {size_t offset; int rmargin; int lastcol; char* buf; } ;

/* Variables and functions */
 char const ASCII_NBRSP ; 
#define  ESCAPE_BREAK 145 
#define  ESCAPE_DEVICE 144 
#define  ESCAPE_FONT 143 
#define  ESCAPE_FONTBI 142 
#define  ESCAPE_FONTBOLD 141 
#define  ESCAPE_FONTCW 140 
#define  ESCAPE_FONTITALIC 139 
#define  ESCAPE_FONTPREV 138 
#define  ESCAPE_FONTROMAN 137 
#define  ESCAPE_HLINE 136 
#define  ESCAPE_HORIZ 135 
#define  ESCAPE_NOSPACE 134 
#define  ESCAPE_NUMBERED 133 
#define  ESCAPE_OVERSTRIKE 132 
#define  ESCAPE_SKIPCHAR 131 
#define  ESCAPE_SPECIAL 130 
#define  ESCAPE_UNDEF 129 
#define  ESCAPE_UNICODE 128 
 int /*<<< orphan*/  SCALE_EM ; 
 scalar_t__ TERMENC_ASCII ; 
 int /*<<< orphan*/  TERMFONT_BI ; 
 int /*<<< orphan*/  TERMFONT_BOLD ; 
 int /*<<< orphan*/  TERMFONT_NONE ; 
 int /*<<< orphan*/  TERMFONT_UNDER ; 
 int TERMP_BACKAFTER ; 
 int TERMP_BACKBEFORE ; 
 int TERMP_KEEP ; 
 int TERMP_NBRWORD ; 
 int TERMP_NOBUF ; 
 int TERMP_NONEWLINE ; 
 int TERMP_NONOSPACE ; 
 int TERMP_NOSPACE ; 
 int TERMP_PREKEEP ; 
 int TERMP_SENTENCE ; 
 int /*<<< orphan*/  TERMTYPE_PDF ; 
 int /*<<< orphan*/  TERMTYPE_PS ; 
 char* FUNC0 (char const*,struct roffsu*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,char const) ; 
 int /*<<< orphan*/  FUNC3 (struct termp*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*,int) ; 
 int FUNC5 (char const**,char const**,int*) ; 
 int FUNC6 (char const*,int) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (char const*,int) ; 
 char* FUNC9 (char const*,int,size_t*) ; 
 size_t FUNC10 (char const*,char*) ; 
 size_t FUNC11 (char const*) ; 
 size_t FUNC12 (struct termp*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct termp*) ; 
 int /*<<< orphan*/  FUNC14 (struct termp*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct termp*,struct roffsu*) ; 
 size_t FUNC16 (struct termp*,char const*) ; 

void
FUNC17(struct termp *p, const char *word)
{
	struct roffsu	 su;
	const char	 nbrsp[2] = { ASCII_NBRSP, 0 };
	const char	*seq, *cp;
	int		 sz, uc;
	size_t		 csz, lsz, ssz;
	enum mandoc_esc	 esc;

	if ((p->flags & TERMP_NOBUF) == 0) {
		if ((p->flags & TERMP_NOSPACE) == 0) {
			if ((p->flags & TERMP_KEEP) == 0) {
				FUNC2(p, ' ');
				if (p->flags & TERMP_SENTENCE)
					FUNC2(p, ' ');
			} else
				FUNC2(p, ASCII_NBRSP);
		}
		if (p->flags & TERMP_PREKEEP)
			p->flags |= TERMP_KEEP;
		if (p->flags & TERMP_NONOSPACE)
			p->flags |= TERMP_NOSPACE;
		else
			p->flags &= ~TERMP_NOSPACE;
		p->flags &= ~(TERMP_SENTENCE | TERMP_NONEWLINE);
		p->skipvsp = 0;
	}

	while ('\0' != *word) {
		if ('\\' != *word) {
			if (TERMP_NBRWORD & p->flags) {
				if (' ' == *word) {
					FUNC3(p, nbrsp, 1);
					word++;
					continue;
				}
				ssz = FUNC10(word, "\\ ");
			} else
				ssz = FUNC10(word, "\\");
			FUNC3(p, word, ssz);
			word += (int)ssz;
			continue;
		}

		word++;
		esc = FUNC5(&word, &seq, &sz);
		switch (esc) {
		case ESCAPE_UNICODE:
			uc = FUNC7(seq + 1, sz - 1);
			break;
		case ESCAPE_NUMBERED:
			uc = FUNC6(seq, sz);
			if (uc < 0)
				continue;
			break;
		case ESCAPE_SPECIAL:
			if (p->enc == TERMENC_ASCII) {
				cp = FUNC9(seq, sz, &ssz);
				if (cp != NULL)
					FUNC3(p, cp, ssz);
			} else {
				uc = FUNC8(seq, sz);
				if (uc > 0)
					FUNC4(p, uc);
			}
			continue;
		case ESCAPE_UNDEF:
			uc = *seq;
			break;
		case ESCAPE_FONTBOLD:
			FUNC14(p, TERMFONT_BOLD);
			continue;
		case ESCAPE_FONTITALIC:
			FUNC14(p, TERMFONT_UNDER);
			continue;
		case ESCAPE_FONTBI:
			FUNC14(p, TERMFONT_BI);
			continue;
		case ESCAPE_FONT:
		case ESCAPE_FONTCW:
		case ESCAPE_FONTROMAN:
			FUNC14(p, TERMFONT_NONE);
			continue;
		case ESCAPE_FONTPREV:
			FUNC13(p);
			continue;
		case ESCAPE_BREAK:
			FUNC2(p, '\n');
			continue;
		case ESCAPE_NOSPACE:
			if (p->flags & TERMP_BACKAFTER)
				p->flags &= ~TERMP_BACKAFTER;
			else if (*word == '\0')
				p->flags |= (TERMP_NOSPACE | TERMP_NONEWLINE);
			continue;
		case ESCAPE_DEVICE:
			if (p->type == TERMTYPE_PDF)
				FUNC3(p, "pdf", 3);
			else if (p->type == TERMTYPE_PS)
				FUNC3(p, "ps", 2);
			else if (p->enc == TERMENC_ASCII)
				FUNC3(p, "ascii", 5);
			else
				FUNC3(p, "utf8", 4);
			continue;
		case ESCAPE_HORIZ:
			if (*seq == '|') {
				seq++;
				uc = -p->col;
			} else
				uc = 0;
			if (FUNC0(seq, &su, SCALE_EM) == NULL)
				continue;
			uc += FUNC15(p, &su);
			if (uc > 0)
				while (uc-- > 0)
					FUNC2(p, ASCII_NBRSP);
			else if (p->col > (size_t)(-uc))
				p->col += uc;
			else {
				uc += p->col;
				p->col = 0;
				if (p->tcol->offset > (size_t)(-uc)) {
					p->ti += uc;
					p->tcol->offset += uc;
				} else {
					p->ti -= p->tcol->offset;
					p->tcol->offset = 0;
				}
			}
			continue;
		case ESCAPE_HLINE:
			if ((cp = FUNC0(seq, &su, SCALE_EM)) == NULL)
				continue;
			uc = FUNC15(p, &su);
			if (uc <= 0) {
				if (p->tcol->rmargin <= p->tcol->offset)
					continue;
				lsz = p->tcol->rmargin - p->tcol->offset;
			} else
				lsz = uc;
			if (*cp == seq[-1])
				uc = -1;
			else if (*cp == '\\') {
				seq = cp + 1;
				esc = FUNC5(&seq, &cp, &sz);
				switch (esc) {
				case ESCAPE_UNICODE:
					uc = FUNC7(cp + 1, sz - 1);
					break;
				case ESCAPE_NUMBERED:
					uc = FUNC6(cp, sz);
					break;
				case ESCAPE_SPECIAL:
					uc = FUNC8(cp, sz);
					break;
				case ESCAPE_UNDEF:
					uc = *seq;
					break;
				default:
					uc = -1;
					break;
				}
			} else
				uc = *cp;
			if (uc < 0x20 || (uc > 0x7E && uc < 0xA0))
				uc = '_';
			if (p->enc == TERMENC_ASCII) {
				cp = FUNC1(uc);
				csz = FUNC16(p, cp);
				ssz = FUNC11(cp);
			} else
				csz = (*p->width)(p, uc);
			while (lsz >= csz) {
				if (p->enc == TERMENC_ASCII)
					FUNC3(p, cp, ssz);
				else
					FUNC4(p, uc);
				lsz -= csz;
			}
			continue;
		case ESCAPE_SKIPCHAR:
			p->flags |= TERMP_BACKAFTER;
			continue;
		case ESCAPE_OVERSTRIKE:
			cp = seq + sz;
			while (seq < cp) {
				if (*seq == '\\') {
					FUNC5(&seq, NULL, NULL);
					continue;
				}
				FUNC4(p, *seq++);
				if (seq < cp) {
					if (p->flags & TERMP_BACKBEFORE)
						p->flags |= TERMP_BACKAFTER;
					else
						p->flags |= TERMP_BACKBEFORE;
				}
			}
			/* Trim trailing backspace/blank pair. */
			if (p->tcol->lastcol > 2 &&
			    (p->tcol->buf[p->tcol->lastcol - 1] == ' ' ||
			     p->tcol->buf[p->tcol->lastcol - 1] == '\t'))
				p->tcol->lastcol -= 2;
			if (p->col > p->tcol->lastcol)
				p->col = p->tcol->lastcol;
			continue;
		default:
			continue;
		}

		/*
		 * Common handling for Unicode and numbered
		 * character escape sequences.
		 */

		if (p->enc == TERMENC_ASCII) {
			cp = FUNC1(uc);
			FUNC3(p, cp, FUNC11(cp));
		} else {
			if ((uc < 0x20 && uc != 0x09) ||
			    (uc > 0x7E && uc < 0xA0))
				uc = 0xFFFD;
			FUNC4(p, uc);
		}
	}
	p->flags &= ~TERMP_NBRWORD;
}
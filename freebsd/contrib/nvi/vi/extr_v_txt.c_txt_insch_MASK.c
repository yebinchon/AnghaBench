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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ owrite; char* lb; size_t cno; scalar_t__ len; int insert; int /*<<< orphan*/  lb_len; int /*<<< orphan*/  lno; } ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  TXT_REPLACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t*,size_t*) ; 

__attribute__((used)) static int
FUNC7(SCR *sp, TEXT *tp, CHAR_T *chp, u_int flags)
{
	u_char *kp;
	CHAR_T savech;
	size_t chlen, cno, copydown, olen, nlen;
	CHAR_T *p;

	/*
	 * The 'R' command does one-for-one replacement, because there's
	 * no way to know how many characters the user intends to replace.
	 */
	if (FUNC4(TXT_REPLACE)) {
		if (tp->owrite) {
			--tp->owrite;
			tp->lb[tp->cno++] = *chp;
			return (0);
		}
	} else if (tp->owrite) {		/* Overwrite a character. */
		cno = tp->cno;

		/*
		 * If the old or new characters are tabs, then the length of the
		 * display depends on the character position in the display.  We
		 * don't even try to handle this here, just ask the screen.
		 */
		if (*chp == '\t') {
			savech = tp->lb[cno];
			tp->lb[cno] = '\t';
			(void)FUNC6(sp, tp->lb, tp->lno, &cno, &nlen);
			tp->lb[cno] = savech;
		} else
			nlen = FUNC1(sp, *chp);

		/*
		 * Eat overwrite characters until we run out of them or we've
		 * handled the length of the new character.  If we only eat
		 * part of an overwrite character, break it into its component
		 * elements and display the remaining components.
		 */
		for (copydown = 0; nlen != 0 && tp->owrite != 0;) {
			--tp->owrite;

			if (tp->lb[cno] == '\t')
				(void)FUNC6(sp,
				    tp->lb, tp->lno, &cno, &olen);
			else
				olen = FUNC1(sp, tp->lb[cno]);

			if (olen == nlen) {
				nlen = 0;
				break;
			}
			if (olen < nlen) {
				++copydown;
				nlen -= olen;
			} else {
				FUNC0(sp,
				    tp->lb, tp->lb_len, tp->len + olen);
				chlen = olen - nlen;
				FUNC5(tp->lb + cno + 1 + chlen,
				    tp->lb + cno + 1, 
				    tp->owrite + tp->insert);

				tp->len += chlen;
				tp->owrite += chlen;
				if (tp->lb[cno] == '\t' ||
				   FUNC3(sp, tp->lb[cno]))
					for (p = tp->lb + cno + 1; chlen--;)
						*p++ = ' ';
				else
					for (kp = (u_char *)
					    FUNC2(sp, tp->lb[cno]) + nlen,
					    p = tp->lb + cno + 1; chlen--;)
						*p++ = *kp++;
				nlen = 0;
				break;
			}
		}

		/*
		 * If had to erase several characters, we adjust the total
		 * count, and if there are any characters left, shift them
		 * into position.
		 */
		if (copydown != 0 && (tp->len -= copydown) != 0)
			FUNC5(tp->lb + cno, tp->lb + cno + copydown,
			    tp->owrite + tp->insert + copydown);

		/* If we had enough overwrite characters, we're done. */
		if (nlen == 0) {
			tp->lb[tp->cno++] = *chp;
			return (0);
		}
	}

	/* Check to see if the character fits into the input buffer. */
	FUNC0(sp, tp->lb, tp->lb_len, tp->len + 1);

	++tp->len;
	if (tp->insert) {			/* Insert a character. */
		if (tp->insert == 1)
			tp->lb[tp->cno + 1] = tp->lb[tp->cno];
		else
			FUNC5(tp->lb + tp->cno + 1,
			    tp->lb + tp->cno, tp->owrite + tp->insert);
	}
	tp->lb[tp->cno++] = *chp;
	return (0);
}
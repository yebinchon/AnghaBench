#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* lastbcomm; } ;
struct TYPE_11__ {char* alt_name; TYPE_1__* frp; } ;
struct TYPE_10__ {char* name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EX_PRIVATE ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,size_t,int*,size_t) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  E_MODIFY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 size_t FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen, CHAR_T *p, size_t *lenp, CHAR_T **bpp, size_t *blenp, int is_bang)
{
	EX_PRIVATE *exp;
	char *t;
	size_t blen, len, off, tlen;
	CHAR_T *bp;
	CHAR_T *wp;
	size_t wlen;

	/* Replace file name characters. */
	for (bp = *bpp, blen = *blenp, len = *lenp; cmdlen > 0; --cmdlen, ++cmd)
		switch (*cmd) {
		case '!':
			if (!is_bang)
				goto ins_ch;
			exp = FUNC2(sp);
			if (exp->lastbcomm == NULL) {
				FUNC6(sp, M_ERR,
				    "115|No previous command to replace \"!\"");
				return (1);
			}
			len += tlen = FUNC5(exp->lastbcomm);
			off = p - bp;
			FUNC0(sp, bp, blen, len);
			p = bp + off;
			FUNC4(p, exp->lastbcomm, tlen);
			p += tlen;
			FUNC3(excp, E_MODIFY);
			break;
		case '%':
			if ((t = sp->frp->name) == NULL) {
				FUNC6(sp, M_ERR,
				    "116|No filename to substitute for %%");
				return (1);
			}
			tlen = FUNC7(t);
			len += tlen;
			off = p - bp;
			FUNC0(sp, bp, blen, len);
			p = bp + off;
			FUNC1(sp, t, tlen, wp, wlen);
			FUNC4(p, wp, wlen);
			p += wlen;
			FUNC3(excp, E_MODIFY);
			break;
		case '#':
			if ((t = sp->alt_name) == NULL) {
				FUNC6(sp, M_ERR,
				    "117|No filename to substitute for #");
				return (1);
			}
			len += tlen = FUNC7(t);
			off = p - bp;
			FUNC0(sp, bp, blen, len);
			p = bp + off;
			FUNC1(sp, t, tlen, wp, wlen);
			FUNC4(p, wp, wlen);
			p += wlen;
			FUNC3(excp, E_MODIFY);
			break;
		case '\\':
			/*
			 * QUOTING NOTE:
			 *
			 * Strip any backslashes that protected the file
			 * expansion characters.
			 */
			if (cmdlen > 1 &&
			    (cmd[1] == '%' || cmd[1] == '#' || cmd[1] == '!')) {
				++cmd;
				--cmdlen;
			}
			/* FALLTHROUGH */
		default:
ins_ch:			++len;
			off = p - bp;
			FUNC0(sp, bp, blen, len);
			p = bp + off;
			*p++ = *cmd;
		}

	/* Nul termination. */
	++len;
	off = p - bp;
	FUNC0(sp, bp, blen, len);
	p = bp + off;
	*p = '\0';

	/* Return the new string length, buffer, buffer length. */
	*lenp = len - 1;
	*bpp = bp;
	*blenp = blen;
	return (0);
}
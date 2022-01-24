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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_ALTWERASE ; 
 int /*<<< orphan*/  O_AUTOINDENT ; 
 int /*<<< orphan*/  O_BEAUTIFY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_SHOWMATCH ; 
 int /*<<< orphan*/  O_TTYWERASE ; 
 int /*<<< orphan*/  O_WRAPLEN ; 
 int /*<<< orphan*/  O_WRAPMARGIN ; 
 int /*<<< orphan*/  SC_SCRIPT ; 
 int TXT_ALTWERASE ; 
 int TXT_AUTOINDENT ; 
 int TXT_BEAUTIFY ; 
 int TXT_CNTRLT ; 
 int TXT_CR ; 
 int TXT_ESCAPE ; 
 int TXT_MAPINPUT ; 
 int TXT_RECORD ; 
 int TXT_REPLAY ; 
 int TXT_RESOLVE ; 
 int TXT_SHOWMATCH ; 
 int TXT_TTYWERASE ; 
 int TXT_WRAPMARGIN ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VC_ISDOT ; 

__attribute__((used)) static u_int32_t
FUNC4(SCR *sp, VICMD *vp, u_int32_t flags)
{
	FUNC1(TXT_CNTRLT |
	    TXT_ESCAPE | TXT_MAPINPUT | TXT_RECORD | TXT_RESOLVE);

	if (FUNC0(vp, VC_ISDOT))
		FUNC1(TXT_REPLAY);

	if (FUNC3(sp, O_ALTWERASE))
		FUNC1(TXT_ALTWERASE);
	if (FUNC3(sp, O_AUTOINDENT))
		FUNC1(TXT_AUTOINDENT);
	if (FUNC3(sp, O_BEAUTIFY))
		FUNC1(TXT_BEAUTIFY);
	if (FUNC3(sp, O_SHOWMATCH))
		FUNC1(TXT_SHOWMATCH);
	if (FUNC0(sp, SC_SCRIPT))
		FUNC1(TXT_CR);
	if (FUNC3(sp, O_TTYWERASE))
		FUNC1(TXT_TTYWERASE);

	/*
	 * !!!
	 * Mapped keys were sometimes unaffected by the wrapmargin option
	 * in the historic 4BSD vi.  Consider the following commands, where
	 * each is executed on an empty line, in an 80 column screen, with
	 * the wrapmargin value set to 60.
	 *
	 *	aABC DEF <ESC>....
	 *	:map K aABC DEF ^V<ESC><CR>KKKKK
	 *	:map K 5aABC DEF ^V<ESC><CR>K
	 *
	 * The first and second commands are affected by wrapmargin.  The
	 * third is not.  (If the inserted text is itself longer than the
	 * wrapmargin value, i.e. if the "ABC DEF " string is replaced by
	 * something that's longer than 60 columns from the beginning of
	 * the line, the first two commands behave as before, but the third
	 * command gets fairly strange.)  The problem is that people wrote
	 * macros that depended on the third command NOT being affected by
	 * wrapmargin, as in this gem which centers lines:
	 *
	 *	map #c $mq81a ^V^[81^V^V|D`qld0:s/  / /g^V^M$p
	 *
	 * For compatibility reasons, we try and make it all work here.  I
	 * offer no hope that this is right, but it's probably pretty close.
	 *
	 * XXX
	 * Once I work my courage up, this is all gonna go away.  It's too
	 * evil to survive.
	 */
	if ((FUNC3(sp, O_WRAPLEN) || FUNC3(sp, O_WRAPMARGIN)) &&
	    (!FUNC2(sp) || !FUNC0(vp, VC_C1SET)))
		FUNC1(TXT_WRAPMARGIN);
	return (flags);
}
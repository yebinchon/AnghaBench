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
#define  ASCII_BREAK 130 
#define  ASCII_HYPH 129 
#define  ASCII_NBRSP 128 
 int MMAN_Bk ; 
 int MMAN_Bk_susp ; 
 int MMAN_PD ; 
 int MMAN_PP ; 
 int MMAN_Sm ; 
 int MMAN_br ; 
 int MMAN_nbrword ; 
 int MMAN_nl ; 
 int MMAN_sp ; 
 int MMAN_spc ; 
 int MMAN_spc_force ; 
 int TPremain ; 
 int outflags ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const) ; 

__attribute__((used)) static void
FUNC3(const char *s)
{

	if ((MMAN_PP | MMAN_sp | MMAN_br | MMAN_nl) & outflags) {
		/*
		 * If we need a newline, print it now and start afresh.
		 */
		if (MMAN_PP & outflags) {
			if (MMAN_sp & outflags) {
				if (MMAN_PD & outflags) {
					FUNC0("\n.PD");
					outflags &= ~MMAN_PD;
				}
			} else if ( ! (MMAN_PD & outflags)) {
				FUNC0("\n.PD 0");
				outflags |= MMAN_PD;
			}
			FUNC0("\n.PP\n");
		} else if (MMAN_sp & outflags)
			FUNC0("\n.sp\n");
		else if (MMAN_br & outflags)
			FUNC0("\n.br\n");
		else if (MMAN_nl & outflags)
			FUNC1('\n');
		outflags &= ~(MMAN_PP|MMAN_sp|MMAN_br|MMAN_nl|MMAN_spc);
		if (1 == TPremain)
			FUNC0(".br\n");
		TPremain = 0;
	} else if (MMAN_spc & outflags) {
		/*
		 * If we need a space, only print it if
		 * (1) it is forced by `No' or
		 * (2) what follows is not terminating punctuation or
		 * (3) what follows is longer than one character.
		 */
		if (MMAN_spc_force & outflags || '\0' == s[0] ||
		    NULL == FUNC2(".,:;)]?!", s[0]) || '\0' != s[1]) {
			if (MMAN_Bk & outflags &&
			    ! (MMAN_Bk_susp & outflags))
				FUNC1('\\');
			FUNC1(' ');
			if (TPremain)
				TPremain--;
		}
	}

	/*
	 * Reassign needing space if we're not following opening
	 * punctuation.
	 */
	if (MMAN_Sm & outflags && ('\0' == s[0] ||
	    (('(' != s[0] && '[' != s[0]) || '\0' != s[1])))
		outflags |= MMAN_spc;
	else
		outflags &= ~MMAN_spc;
	outflags &= ~(MMAN_spc_force | MMAN_Bk_susp);

	for ( ; *s; s++) {
		switch (*s) {
		case ASCII_NBRSP:
			FUNC0("\\ ");
			break;
		case ASCII_HYPH:
			FUNC1('-');
			break;
		case ASCII_BREAK:
			FUNC0("\\:");
			break;
		case ' ':
			if (MMAN_nbrword & outflags) {
				FUNC0("\\ ");
				break;
			}
			/* FALLTHROUGH */
		default:
			FUNC1((unsigned char)*s);
			break;
		}
		if (TPremain)
			TPremain--;
	}
	outflags &= ~MMAN_nbrword;
}
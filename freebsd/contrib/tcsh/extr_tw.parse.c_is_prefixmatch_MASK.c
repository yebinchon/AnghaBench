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
typedef  int Char ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int TRIM ; 
 int TRUE ; 
 char FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(Char *check, Char *template, int enhanced)
{
    Char MCH1, MCH2, LCH1, LCH2;

    for (; *check; check++, template++) {
	if ((*check & TRIM) != (*template & TRIM)) {
	    MCH1 = (*check & TRIM);
	    MCH2 = (*template & TRIM);
            LCH1 = FUNC0(MCH1) ? FUNC1(MCH1) : 
		enhanced == 2 && MCH1 == '_' ? '-' : MCH1;
            LCH2 = FUNC0(MCH2) ? FUNC1(MCH2) :
		enhanced == 2 && MCH2 == '_' ? '-' : MCH2;
	    if (MCH1 != MCH2 && MCH1 != LCH2 &&
		(LCH1 != MCH2 || enhanced == 2)) {
		if (enhanced && ((*check & TRIM) == '-' || 
				 (*check & TRIM) == '.' ||
				 (*check & TRIM) == '_')) {
		    MCH1 = MCH2 = (*check & TRIM);
		    if (MCH1 == '_' && enhanced != 2) {
			MCH2 = '-';
		    } else if (MCH1 == '-') {
			MCH2 = '_';
		    }
		    for (; *template && (*template & TRIM) != MCH1 &&
					(*template & TRIM) != MCH2; template++)
			continue;
		    if (!*template) {
	                return (FALSE);
		    }
		} else {
		    return (FALSE);
		}
	    }
	}
    }
    return (TRUE);
}
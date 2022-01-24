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
typedef  char Char ;

/* Variables and functions */
 int ERR_AMBIG ; 
 int ERR_NAME ; 
#define  G_APPEND 130 
#define  G_ERROR 129 
#define  G_IGNORE 128 
 size_t FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int TRIM ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 

__attribute__((used)) static Char *
FUNC8(Char *str, Char **vl, int action)
{
    size_t chars;
    Char **t, *p, *strp;

    switch (action) {
    case G_ERROR:
	FUNC3(FUNC4(str));
	FUNC2(vl);
	FUNC5(ERR_NAME | ERR_AMBIG);
	break;
    case G_APPEND:
	chars = 0;
	for (t = vl; (p = *t++) != NULL; chars++)
	    chars += FUNC0(p);
	str = FUNC7(chars * sizeof(Char));
	for (t = vl, strp = str; (p = *t++) != NULL; chars++) {
	    while (*p)
		 *strp++ = *p++ & TRIM;
	    *strp++ = ' ';
	}
	*--strp = '\0';
	FUNC2(vl);
	break;
    case G_IGNORE:
	str = FUNC1(FUNC6(*vl));
	FUNC2(vl);
	break;
    default:
	break;
    }
    return (str);
}
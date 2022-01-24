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
typedef  int /*<<< orphan*/  string_desc ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  TERMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/ * ABSENT_STRING ; 
 int MAX_TERMCAP_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  acs_chars ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * box_chars_1 ; 

__attribute__((used)) static void
FUNC6(TERMTYPE *tp)
{
    /*
     * TERMINFO-TO-TERMINFO MAPPINGS FOR SOURCE TRANSLATION
     * ----------------------------------------------------------------------
     */

    /*
     * Translate AIX forms characters.
     */
    if (FUNC0(box_chars_1)) {
	char buf2[MAX_TERMCAP_LENGTH];
	string_desc result;

	FUNC3(&result, buf2, sizeof(buf2));
	FUNC1(&result, acs_chars);

	FUNC5(&result, 'l', box_chars_1[0]);	/* ACS_ULCORNER */
	FUNC5(&result, 'q', box_chars_1[1]);	/* ACS_HLINE */
	FUNC5(&result, 'k', box_chars_1[2]);	/* ACS_URCORNER */
	FUNC5(&result, 'x', box_chars_1[3]);	/* ACS_VLINE */
	FUNC5(&result, 'j', box_chars_1[4]);	/* ACS_LRCORNER */
	FUNC5(&result, 'm', box_chars_1[5]);	/* ACS_LLCORNER */
	FUNC5(&result, 'w', box_chars_1[6]);	/* ACS_TTEE */
	FUNC5(&result, 'u', box_chars_1[7]);	/* ACS_RTEE */
	FUNC5(&result, 'v', box_chars_1[8]);	/* ACS_BTEE */
	FUNC5(&result, 't', box_chars_1[9]);	/* ACS_LTEE */
	FUNC5(&result, 'n', box_chars_1[10]);	/* ACS_PLUS */

	if (buf2[0]) {
	    acs_chars = FUNC2(buf2);
	    FUNC4("acsc string synthesized from AIX capabilities");
	    box_chars_1 = ABSENT_STRING;
	}
    }
    /*
     * ----------------------------------------------------------------------
     */
}
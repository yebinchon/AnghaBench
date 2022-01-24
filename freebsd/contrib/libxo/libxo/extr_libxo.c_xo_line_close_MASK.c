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
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int /*<<< orphan*/  div_close ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_DIV_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  XO_STYLE_HTML 129 
#define  XO_STYLE_TEXT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop)
{
    static char div_close[] = "</div>";

    switch (FUNC5(xop)) {
    case XO_STYLE_HTML:
	if (!FUNC2(xop, XOIF_DIV_OPEN))
	    FUNC4(xop, 0);

	FUNC1(xop, XOIF_DIV_OPEN);
	FUNC3(xop, div_close, sizeof(div_close) - 1);

	if (FUNC0(xop, XOF_PRETTY))
	    FUNC3(xop, "\n", 1);
	break;

    case XO_STYLE_TEXT:
	FUNC3(xop, "\n", 1);
	break;
    }
}
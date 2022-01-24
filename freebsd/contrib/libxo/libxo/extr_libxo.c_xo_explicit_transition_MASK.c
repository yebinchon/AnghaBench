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
typedef  int xo_xsf_flags_t ;
typedef  int /*<<< orphan*/  xo_xof_flags_t ;
typedef  int xo_state_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_NOT_FIRST ; 
 int XSF_LIST ; 
 int XSF_NOT_FIRST ; 
#define  XSS_CLOSE_INSTANCE 131 
#define  XSS_CLOSE_LIST 130 
#define  XSS_OPEN_INSTANCE 129 
#define  XSS_OPEN_LIST 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,int,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9 (xo_handle_t *xop, xo_state_t new_state,
			const char *name, xo_xof_flags_t flags)
{
    xo_xsf_flags_t xsf_flags;

    xop = FUNC1(xop);

    switch (new_state) {

    case XSS_OPEN_LIST:
	FUNC6(xop, flags, name);
	break;

    case XSS_OPEN_INSTANCE:
	FUNC5(xop, flags, name);
	break;

    case XSS_CLOSE_INSTANCE:
	FUNC2(xop, name, 1, 1, XSS_OPEN_INSTANCE,
			FUNC7(flags));
	FUNC8(xop);
	FUNC3(xop, name);
	break;

    case XSS_CLOSE_LIST:
	xsf_flags = FUNC0(xop, XOF_NOT_FIRST) ? XSF_NOT_FIRST : 0;

	FUNC2(xop, name, 1, 1, XSS_OPEN_LIST,
			XSF_LIST | xsf_flags | FUNC7(flags));
	FUNC4(xop, name);
	break;
    }
}
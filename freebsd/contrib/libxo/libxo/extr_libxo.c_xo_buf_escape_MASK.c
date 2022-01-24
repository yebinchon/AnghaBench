#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xff_flags_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  xb_curp; } ;
typedef  TYPE_1__ xo_buffer_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
#define  XO_STYLE_HTML 131 
#define  XO_STYLE_JSON 130 
#define  XO_STYLE_SDPARAMS 129 
#define  XO_STYLE_XML 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop, xo_buffer_t *xbp,
	       const char *str, ssize_t len, xo_xff_flags_t flags)
{
    if (!FUNC1(xbp, len))
	return;

    FUNC0(xbp->xb_curp, str, len);

    switch (FUNC5(xop)) {
    case XO_STYLE_XML:
    case XO_STYLE_HTML:
	len = FUNC4(xbp, len, flags);
	break;

    case XO_STYLE_JSON:
	len = FUNC2(xbp, len, flags);
	break;

    case XO_STYLE_SDPARAMS:
	len = FUNC3(xbp, len, flags);
	break;
    }

    xbp->xb_curp += len;
}
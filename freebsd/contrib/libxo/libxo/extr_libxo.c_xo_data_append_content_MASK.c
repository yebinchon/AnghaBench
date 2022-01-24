#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int xo_xff_flags_t ;
struct TYPE_8__ {int xo_columns; int xo_anchor_columns; int /*<<< orphan*/  xo_data; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int XFF_GT_FLAGS ; 
 int XFF_UNESCAPE ; 
 int /*<<< orphan*/  XF_ENC_UTF8 ; 
 int /*<<< orphan*/  XOF_COLUMNS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_ANCHOR ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop, const char *str, ssize_t len,
			xo_xff_flags_t flags)
{
    int cols;
    int need_enc = FUNC5(xop);
    ssize_t start_offset = FUNC2(&xop->xo_data);

    cols = FUNC4(xop, &xop->xo_data, XFF_UNESCAPE | flags,
				   NULL, str, len, -1,
				   need_enc, XF_ENC_UTF8);
    if (flags & XFF_GT_FLAGS)
	cols = FUNC3(xop, flags, start_offset, cols, need_enc);

    if (FUNC0(xop, XOF_COLUMNS))
	xop->xo_columns += cols;
    if (FUNC1(xop, XOIF_ANCHOR))
	xop->xo_anchor_columns += cols;
}
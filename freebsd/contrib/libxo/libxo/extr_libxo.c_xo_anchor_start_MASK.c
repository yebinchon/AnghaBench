#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ xb_bufp; scalar_t__ xb_curp; } ;
struct TYPE_8__ {int /*<<< orphan*/  xo_anchor_min_width; scalar_t__ xo_anchor_columns; scalar_t__ xo_anchor_offset; TYPE_2__ xo_data; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int /*<<< orphan*/  xo_field_info_t ;
typedef  TYPE_2__ xo_buffer_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  XOIF_ANCHOR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (xo_handle_t *xop, xo_field_info_t *xfip,
		 const char *value, ssize_t vlen)
{
    if (FUNC0(xop, XOIF_ANCHOR))
	FUNC2(xop, "the anchor already recording is discarded");

    FUNC1(xop, XOIF_ANCHOR);
    xo_buffer_t *xbp = &xop->xo_data;
    xop->xo_anchor_offset = xbp->xb_curp - xbp->xb_bufp;
    xop->xo_anchor_columns = 0;

    /*
     * Now we find the width, if possible.  If it's not there,
     * we'll get it on the end anchor.
     */
    xop->xo_anchor_min_width = FUNC3(xop, xfip, value, vlen);
}
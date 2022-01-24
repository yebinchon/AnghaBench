#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ xb_curp; scalar_t__ xb_bufp; } ;
struct TYPE_7__ {int /*<<< orphan*/  xo_opaque; int /*<<< orphan*/  (* xo_write ) (int /*<<< orphan*/ ,scalar_t__) ;TYPE_2__ xo_data; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  TYPE_2__ xo_buffer_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_UNITS_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC4 (xo_handle_t *xop)
{
    ssize_t rc = 0;
    xo_buffer_t *xbp = &xop->xo_data;

    if (xbp->xb_curp != xbp->xb_bufp) {
	FUNC3(xbp, "", 1); /* Append ending NUL */
	FUNC2(xop);
	if (xop->xo_write)
	    rc = xop->xo_write(xop->xo_opaque, xbp->xb_bufp);
	xbp->xb_curp = xbp->xb_bufp;
    }

    /* Turn off the flags that don't survive across writes */
    FUNC0(xop, XOIF_UNITS_PENDING);

    return rc;
}
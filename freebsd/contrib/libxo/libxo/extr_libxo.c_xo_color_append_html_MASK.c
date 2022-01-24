#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ xb_bufp; scalar_t__ xb_curp; } ;
struct TYPE_6__ {TYPE_2__ xo_color_buf; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  TYPE_2__ xo_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (xo_handle_t *xop)
{
    /*
     * If the color buffer has content, we add it now.  It's already
     * prebuilt and ready, since we want to add it to every <div>.
     */
    if (!FUNC0(&xop->xo_color_buf)) {
	xo_buffer_t *xbp = &xop->xo_color_buf;

	FUNC1(xop, xbp->xb_bufp, xbp->xb_curp - xbp->xb_bufp);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_style_t ;
struct TYPE_5__ {int /*<<< orphan*/  xo_style; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 

void
FUNC1 (xo_handle_t *xop, xo_style_t style)
{
    xop = FUNC0(xop);
    xop->xo_style = style;
}
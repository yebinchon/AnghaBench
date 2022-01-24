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
typedef  int xo_ssize_t ;
struct TYPE_8__ {scalar_t__ (* xo_flush ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  xo_opaque; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  XO_OP_FLUSH ; 
#define  XO_STYLE_ENCODER 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

xo_ssize_t
FUNC5 (xo_handle_t *xop)
{
    ssize_t rc;

    xop = FUNC1(xop);

    switch (FUNC3(xop)) {
    case XO_STYLE_ENCODER:
	FUNC2(xop, XO_OP_FLUSH, NULL, NULL, 0);
    }

    rc = FUNC4(xop);
    if (rc >= 0 && xop->xo_flush)
	if (xop->xo_flush(xop->xo_opaque) < 0)
	    return -1;

    return rc;
}
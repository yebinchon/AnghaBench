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
struct TYPE_5__ {int /*<<< orphan*/ * xo_leading_xpath; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int) ; 

void
FUNC3 (xo_handle_t *xop, const char *path)
{
    xop = FUNC0(xop);

    if (xop->xo_leading_xpath) {
	FUNC1(xop->xo_leading_xpath);
	xop->xo_leading_xpath = NULL;
    }

    if (path == NULL)
	return;

    xop->xo_leading_xpath = FUNC2(path, -1);
}
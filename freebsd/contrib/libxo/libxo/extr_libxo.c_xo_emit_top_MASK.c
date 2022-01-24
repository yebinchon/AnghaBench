#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * xo_version; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_TOP_EMITTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC4 (xo_handle_t *xop, const char *ppn)
{
    FUNC3(xop, "%*s{%s", FUNC2(xop), "", ppn);
    FUNC0(xop, XOIF_TOP_EMITTED);

    if (xop->xo_version) {
	FUNC3(xop, "%*s\"__version\": \"%s\", %s",
		  FUNC2(xop), "", xop->xo_version, ppn);
	FUNC1(xop->xo_version);
	xop->xo_version = NULL;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  xo_version; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  XO_OP_VERSION ; 
#define  XO_STYLE_ENCODER 130 
#define  XO_STYLE_JSON 129 
#define  XO_STYLE_XML 128 
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,char const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7 (xo_handle_t *xop, const char *version)
{
    xop = FUNC2(xop);

    if (version == NULL || FUNC0(version, '"') != NULL)
	return;

    if (!FUNC6(xop))
	return;

    switch (FUNC5(xop)) {
    case XO_STYLE_XML:
	/* For XML, we record this as an attribute for the first tag */
	FUNC1(xop, "version", "%s", version);
	break;

    case XO_STYLE_JSON:
	/*
	 * For JSON, we record the version string in our handle, and emit
	 * it in xo_emit_top.
	 */
	xop->xo_version = FUNC4(version, -1);
	break;

    case XO_STYLE_ENCODER:
	FUNC3(xop, XO_OP_VERSION, NULL, version, 0);
	break;
    }
}
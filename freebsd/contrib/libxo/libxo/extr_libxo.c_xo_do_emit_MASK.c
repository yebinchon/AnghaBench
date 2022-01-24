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
struct TYPE_7__ {int /*<<< orphan*/  xo_errno; scalar_t__ xo_columns; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int /*<<< orphan*/  xo_field_info_t ;
typedef  int xo_emit_flags_t ;
typedef  int /*<<< orphan*/  fields ;

/* Variables and functions */
 int XOEF_RETAIN ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_RETAIN_ALL ; 
 int /*<<< orphan*/  XOF_RETAIN_NONE ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 unsigned int FUNC3 (TYPE_1__*,char const*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int,char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ **,unsigned int*) ; 

__attribute__((used)) static int
FUNC8 (xo_handle_t *xop, xo_emit_flags_t flags, const char *fmt)
{
    xop->xo_columns = 0;	/* Always reset it */
    xop->xo_errno = errno;	/* Save for "%m" */

    if (fmt == NULL)
	return 0;

    unsigned max_fields;
    xo_field_info_t *fields = NULL;

    /* Adjust XOEF_RETAIN based on global flags */
    if (FUNC0(xop, XOF_RETAIN_ALL))
	flags |= XOEF_RETAIN;
    if (FUNC0(xop, XOF_RETAIN_NONE))
	flags &= ~XOEF_RETAIN;

    /*
     * Check for 'retain' flag, telling us to retain the field
     * information.  If we've already saved it, then we can avoid
     * re-parsing the format string.
     */
    if (!(flags & XOEF_RETAIN)
	|| FUNC7(fmt, &fields, &max_fields) != 0
	|| fields == NULL) {

	/* Nothing retained; parse the format string */
	max_fields = FUNC3(xop, fmt);
	fields = FUNC1(max_fields * sizeof(fields[0]));
	FUNC2(fields, max_fields * sizeof(fields[0]));

	if (FUNC5(xop, fields, max_fields, fmt))
	    return -1;		/* Warning already displayed */

	if (flags & XOEF_RETAIN) {
	    /* Retain the info */
	    FUNC6(fmt, fields, max_fields);
	}
    }

    return FUNC4(xop, fields, max_fields, fmt);
}
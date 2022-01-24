#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_simplify_field_func_t ;
struct TYPE_12__ {int /*<<< orphan*/  xo_errno; scalar_t__ xo_columns; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int /*<<< orphan*/  xo_field_info_t ;
struct TYPE_13__ {char* xb_bufp; } ;
typedef  TYPE_2__ xo_buffer_t ;
typedef  int /*<<< orphan*/  fields ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned int FUNC2 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int,char const*) ; 

char *
FUNC7 (xo_handle_t *xop, const char *fmt, int with_numbers,
		    xo_simplify_field_func_t field_cb)
{
    xop = FUNC3(xop);

    xop->xo_columns = 0;	/* Always reset it */
    xop->xo_errno = errno;	/* Save for "%m" */

    unsigned max_fields = FUNC2(xop, fmt);
    xo_field_info_t fields[max_fields];

    FUNC0(fields, max_fields * sizeof(fields[0]));

    if (FUNC6(xop, fields, max_fields, fmt))
	return NULL;		/* Warning already displayed */

    xo_buffer_t xb;
    FUNC1(&xb);

    if (with_numbers)
	FUNC4(xop, fmt, fields);

    if (FUNC5(xop, &xb, fields, -1, fmt, field_cb))
	return NULL;

    return xb.xb_bufp;
}
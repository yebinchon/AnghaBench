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
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  c_stack_buf; int /*<<< orphan*/  c_value_buf; int /*<<< orphan*/  c_name_buf; int /*<<< orphan*/  c_data; } ;
typedef  TYPE_1__ csv_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4 (xo_handle_t *xop)
{
    csv_private_t *csv = FUNC2(NULL, sizeof(*csv));
    if (csv == NULL)
	return -1;

    FUNC0(csv, sizeof(*csv));
    FUNC1(&csv->c_data);
    FUNC1(&csv->c_name_buf);
    FUNC1(&csv->c_value_buf);
#ifdef CSV_STACK_IS_NEEDED
    xo_buf_init(&csv->c_stack_buf);
#endif /* CSV_STACK_IS_NEEDED */

    FUNC3(xop, csv);

    return 0;
}
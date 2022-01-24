#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xo_string_node_t ;
typedef  int /*<<< orphan*/  xo_string_list_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xs_link ; 

__attribute__((used)) static inline void
FUNC4 (xo_string_list_t *listp)
{
    xo_string_node_t *xsp;

    FUNC3(listp);

    for (;;) {
	xsp = FUNC0(listp);
        if (xsp == NULL)
            break;
        FUNC1(listp, xsp, xs_link);
	FUNC2(xsp);
    }
}
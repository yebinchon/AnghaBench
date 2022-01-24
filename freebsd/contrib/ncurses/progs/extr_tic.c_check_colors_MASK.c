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
typedef  int /*<<< orphan*/  TERMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * initialize_pair ; 
 scalar_t__ max_colors ; 
 scalar_t__ max_pairs ; 
 int /*<<< orphan*/ * orig_colors ; 
 int /*<<< orphan*/ * orig_pair ; 
 int /*<<< orphan*/ * set_a_background ; 
 int /*<<< orphan*/ * set_a_foreground ; 
 int /*<<< orphan*/ * set_background ; 
 int /*<<< orphan*/ * set_color_pair ; 
 int /*<<< orphan*/ * set_foreground ; 

__attribute__((used)) static void
FUNC5(TERMTYPE *tp)
{
    if ((max_colors > 0) != (max_pairs > 0)
	|| ((max_colors > max_pairs) && (initialize_pair == 0)))
	FUNC4("inconsistent values for max_colors (%d) and max_pairs (%d)",
		    max_colors, max_pairs);

    FUNC0(set_foreground, set_background);
    FUNC0(set_a_foreground, set_a_background);
    FUNC0(set_color_pair, initialize_pair);

    if (FUNC2(set_foreground)
	&& FUNC2(set_a_foreground)
	&& !FUNC3(set_foreground, set_a_foreground))
	FUNC4("expected setf/setaf to be different");

    if (FUNC2(set_background)
	&& FUNC2(set_a_background)
	&& !FUNC3(set_background, set_a_background))
	FUNC4("expected setb/setab to be different");

    /* see: has_colors() */
    if (FUNC1(max_colors) && FUNC1(max_pairs)
	&& (((set_foreground != NULL)
	     && (set_background != NULL))
	    || ((set_a_foreground != NULL)
		&& (set_a_background != NULL))
	    || set_color_pair)) {
	if (!FUNC2(orig_pair) && !FUNC2(orig_colors))
	    FUNC4("expected either op/oc string for resetting colors");
    }
}
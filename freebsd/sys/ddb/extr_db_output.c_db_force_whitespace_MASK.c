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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int db_last_non_space ; 
 int db_output_position ; 

void
FUNC3(void)
{
	int last_print, next_tab;

	last_print = db_last_non_space;
	while (last_print < db_output_position) {
	    next_tab = FUNC0(last_print);
	    if (next_tab <= db_output_position) {
		while (last_print < next_tab) { /* DON'T send a tab!!! */
			FUNC1(' ');
			FUNC2(' ');
			last_print++;
		}
	    }
	    else {
		FUNC1(' ');
		FUNC2(' ');
		last_print++;
	    }
	}
	db_last_non_space = db_output_position;
}
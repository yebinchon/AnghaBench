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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ db_last_non_space ; 
 scalar_t__ db_maxlines ; 
 scalar_t__ db_newlines ; 
 scalar_t__ db_output_position ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ ddb_use_printf ; 
 int /*<<< orphan*/  kdb_active ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(int c)
{

	/*
	 * If not in the debugger or the user requests it, output data to
	 * both the console and the message buffer.
	 */
	if (!kdb_active || ddb_use_printf) {
		FUNC6("%c", c);
		if (!kdb_active)
			return;
		if (c == '\r' || c == '\n')
			FUNC3();
		if (c == '\n' && db_maxlines > 0) {
			db_newlines++;
			if (db_newlines >= db_maxlines)
				FUNC5();
		}
		return;
	}

	/* Otherwise, output data directly to the console. */
	if (c > ' ' && c <= '~') {
	    /*
	     * Printing character.
	     * If we have spaces to print, print them first.
	     * Use tabs if possible.
	     */
	    FUNC4();
	    FUNC1(c);
	    FUNC2(c);
	    db_output_position++;
	    db_last_non_space = db_output_position;
	}
	else if (c == '\n') {
	    /* Newline */
	    FUNC1(c);
	    FUNC2(c);
	    db_output_position = 0;
	    db_last_non_space = 0;
	    FUNC3();
	    if (db_maxlines > 0) {
		    db_newlines++;
		    if (db_newlines >= db_maxlines)
			    FUNC5();
	    }
	}
	else if (c == '\r') {
	    /* Return */
	    FUNC1(c);
	    FUNC2(c);
	    db_output_position = 0;
	    db_last_non_space = 0;
	    FUNC3();
	}
	else if (c == '\t') {
	    /* assume tabs every 8 positions */
	    db_output_position = FUNC0(db_output_position);
	}
	else if (c == ' ') {
	    /* space */
	    db_output_position++;
	}
	else if (c == '\007') {
	    /* bell */
	    FUNC1(c);
	    /* No need to beep in a log: db_capture_writech(c); */
	}
	/* other characters are assumed non-printing */
}
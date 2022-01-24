#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  term_names; } ;
typedef  TYPE_1__ TERMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 char* column_address ; 
 char* cursor_address ; 
 char* cursor_down ; 
 char* cursor_home ; 
 char* cursor_left ; 
 char* cursor_mem_address ; 
 char* cursor_right ; 
 char* cursor_to_ll ; 
 char* cursor_up ; 
 char* delete_line ; 
 scalar_t__ generic_type ; 
 scalar_t__ hard_copy ; 
 char* insert_line ; 
 char* parm_delete_line ; 
 char* parm_down_cursor ; 
 char* parm_insert_line ; 
 char* parm_left_cursor ; 
 char* parm_right_cursor ; 
 char* parm_up_cursor ; 
 char* row_address ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(TERMTYPE *tp)
{
    int count;
    char *list[4];

    if (hard_copy) {
	FUNC5(tp, "hard_copy");
    } else if (generic_type) {
	FUNC5(tp, "generic_type");
    } else if (FUNC6(tp->term_names, '+') == 0) {
	int y = 0;
	int x = 0;
	if (FUNC2(column_address))
	    ++y;
	if (FUNC2(cursor_address))
	    y = x = 10;
	if (FUNC2(cursor_home))
	    ++y, ++x;
	if (FUNC2(cursor_mem_address))
	    y = x = 10;
	if (FUNC2(cursor_to_ll))
	    ++y, ++x;
	if (FUNC2(row_address))
	    ++x;
	if (FUNC2(cursor_down))
	    ++y;
	if (FUNC2(cursor_up))
	    ++y;
	if (FUNC2(cursor_left))
	    ++x;
	if (FUNC2(cursor_right))
	    ++x;
	if (x < 2 && y < 2) {
	    FUNC3("terminal lacks cursor addressing");
	} else {
	    if (x < 2)
		FUNC3("terminal lacks cursor column-addressing");
	    if (y < 2)
		FUNC3("terminal lacks cursor row-addressing");
	}
    }

    /* it is rare to have an insert-line feature without a matching delete */
    FUNC0(parm_insert_line, insert_line);
    FUNC0(parm_delete_line, delete_line);
    FUNC0(parm_insert_line, parm_delete_line);

    /* if we have a parameterized form, then the non-parameterized is easy */
    FUNC0(parm_down_cursor, cursor_down);
    FUNC0(parm_up_cursor, cursor_up);
    FUNC0(parm_left_cursor, cursor_left);
    FUNC0(parm_right_cursor, cursor_right);

    /* Given any of a set of cursor movement, the whole set should be present.
     * Technically this is not true (we could use cursor_address to fill in
     * unsupported controls), but it is likely.
     */
    count = 0;
    if (FUNC2(parm_down_cursor)) {
	list[count++] = parm_down_cursor;
    }
    if (FUNC2(parm_up_cursor)) {
	list[count++] = parm_up_cursor;
    }
    if (FUNC2(parm_left_cursor)) {
	list[count++] = parm_left_cursor;
    }
    if (FUNC2(parm_right_cursor)) {
	list[count++] = parm_right_cursor;
    }
    if (count == 4) {
	FUNC4(list);
    } else if (count != 0) {
	FUNC1(parm_down_cursor);
	FUNC1(parm_up_cursor);
	FUNC1(parm_left_cursor);
	FUNC1(parm_right_cursor);
    }

    count = 0;
    if (FUNC2(cursor_down)) {
	list[count++] = cursor_down;
    }
    if (FUNC2(cursor_up)) {
	list[count++] = cursor_up;
    }
    if (FUNC2(cursor_left)) {
	list[count++] = cursor_left;
    }
    if (FUNC2(cursor_right)) {
	list[count++] = cursor_right;
    }
    if (count == 4) {
	FUNC4(list);
    } else if (count != 0) {
	count = 0;
	if (FUNC2(cursor_down) && FUNC7(cursor_down, "\n"))
	    ++count;
	if (FUNC2(cursor_left) && FUNC7(cursor_left, "\b"))
	    ++count;
	if (FUNC2(cursor_up) && FUNC8(cursor_up) > 1)
	    ++count;
	if (FUNC2(cursor_right) && FUNC8(cursor_right) > 1)
	    ++count;
	if (count) {
	    FUNC1(cursor_down);
	    FUNC1(cursor_up);
	    FUNC1(cursor_left);
	    FUNC1(cursor_right);
	}
    }
}
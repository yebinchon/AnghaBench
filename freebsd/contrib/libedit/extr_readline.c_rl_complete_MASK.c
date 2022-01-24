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
typedef  int /*<<< orphan*/  rl_compentry_func_t ;
typedef  int /*<<< orphan*/  ct_buffer_t ;

/* Variables and functions */
 int CC_REFRESH ; 
 int /*<<< orphan*/  _rl_completion_append_character_function ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * h ; 
 int /*<<< orphan*/  rl_attempted_completion_function ; 
 int /*<<< orphan*/  rl_attempted_completion_over ; 
 char const* rl_basic_word_break_characters ; 
 scalar_t__ rl_completion_entry_function ; 
 scalar_t__ rl_completion_query_items ; 
 int /*<<< orphan*/  rl_completion_type ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  rl_end ; 
 scalar_t__ rl_inhibit_completion ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rl_point ; 
 char* FUNC6 () ; 

int
FUNC7(int ignore __attribute__((__unused__)), int invoking_key)
{
	static ct_buffer_t wbreak_conv, sprefix_conv;
	const char *breakchars;

	if (h == NULL || e == NULL)
		FUNC5();

	if (rl_inhibit_completion) {
		char arr[2];
		arr[0] = (char)invoking_key;
		arr[1] = '\0';
		FUNC2(e, arr);
		return CC_REFRESH;
	}

	if (&rl_completion_word_break_hook != NULL)
		breakchars = FUNC4)();
	else
		breakchars = rl_basic_word_break_characters;

	FUNC0();

	/* Just look at how many global variables modify this operation! */
	return FUNC3(e,
	    (rl_compentry_func_t *)rl_completion_entry_function,
	    rl_attempted_completion_function,
	    FUNC1(rl_basic_word_break_characters, &wbreak_conv),
	    FUNC1(breakchars, &sprefix_conv),
	    _rl_completion_append_character_function,
	    (size_t)rl_completion_query_items,
	    &rl_completion_type, &rl_attempted_completion_over,
	    &rl_point, &rl_end);


}
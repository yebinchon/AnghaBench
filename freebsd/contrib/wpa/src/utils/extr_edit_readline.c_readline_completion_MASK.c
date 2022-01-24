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
 int /*<<< orphan*/  edit_cb_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pending_completions ; 
 int /*<<< orphan*/  readline_completion_func ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char** FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rl_line_buffer ; 

__attribute__((used)) static char ** FUNC3(const char *text, int start, int end)
{
	FUNC1();
	if (&edit_completion_cb)
		pending_completions = FUNC0(edit_cb_ctx,
							 rl_line_buffer, end);
	return FUNC2(text, readline_completion_func);
}
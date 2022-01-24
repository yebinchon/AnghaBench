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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comment ; 
 int /*<<< orphan*/  empty_input ; 
 int /*<<< orphan*/  empty_line ; 
 int /*<<< orphan*/  line_continuation_within_whitespace ; 
 int /*<<< orphan*/  many_words ; 
 int /*<<< orphan*/  one_word ; 
 int /*<<< orphan*/  two_words ; 
 int /*<<< orphan*/  unterminated_empty_line ; 
 int /*<<< orphan*/  unterminated_line ; 
 int /*<<< orphan*/  whitespace ; 
 int /*<<< orphan*/  whitespace_before_comment ; 

__attribute__((used)) static int
FUNC1(int argc, char *argv[])
{

	(void)argc;
	(void)argv;

	FUNC0(empty_input);
	FUNC0(empty_line);
	FUNC0(unterminated_empty_line);
	FUNC0(whitespace);
	FUNC0(comment);
	FUNC0(whitespace_before_comment);
	FUNC0(line_continuation_within_whitespace);

	FUNC0(one_word);
	FUNC0(two_words);
	FUNC0(many_words);
	FUNC0(unterminated_line);

	return (0);
}
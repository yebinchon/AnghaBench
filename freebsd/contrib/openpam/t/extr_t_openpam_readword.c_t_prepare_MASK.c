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
 int /*<<< orphan*/  comment_after_word ; 
 int /*<<< orphan*/  comment_at_eof ; 
 int /*<<< orphan*/  double_quote_after_word ; 
 int /*<<< orphan*/  double_quote_before_word ; 
 int /*<<< orphan*/  double_quote_within_word ; 
 int /*<<< orphan*/  double_quoted_comment ; 
 int /*<<< orphan*/  double_quoted_whitespace ; 
 int /*<<< orphan*/  double_quoted_words ; 
 int /*<<< orphan*/  double_quotes_within_single_quotes ; 
 int /*<<< orphan*/  double_whitespace_after_word ; 
 int /*<<< orphan*/  double_whitespace_before_word ; 
 int /*<<< orphan*/  empty_double_quotes ; 
 int /*<<< orphan*/  empty_input ; 
 int /*<<< orphan*/  empty_line ; 
 int /*<<< orphan*/  empty_single_quotes ; 
 int /*<<< orphan*/  escape_at_eof ; 
 int /*<<< orphan*/  escaped_comment ; 
 int /*<<< orphan*/  escaped_double_quote ; 
 int /*<<< orphan*/  escaped_double_quote_within_double_quotes ; 
 int /*<<< orphan*/  escaped_double_quote_within_single_quotes ; 
 int /*<<< orphan*/  escaped_escape ; 
 int /*<<< orphan*/  escaped_escape_within_double_quotes ; 
 int /*<<< orphan*/  escaped_escape_within_single_quotes ; 
 int /*<<< orphan*/  escaped_letter ; 
 int /*<<< orphan*/  escaped_letter_within_double_quotes ; 
 int /*<<< orphan*/  escaped_letter_within_single_quotes ; 
 int /*<<< orphan*/  escaped_newline_after_word ; 
 int /*<<< orphan*/  escaped_newline_before_word ; 
 int /*<<< orphan*/  escaped_newline_within_word ; 
 int /*<<< orphan*/  escaped_single_quote ; 
 int /*<<< orphan*/  escaped_single_quote_within_double_quotes ; 
 int /*<<< orphan*/  escaped_single_quote_within_single_quotes ; 
 int /*<<< orphan*/  escaped_whitespace ; 
 int /*<<< orphan*/  escaped_whitespace_within_double_quotes ; 
 int /*<<< orphan*/  escaped_whitespace_within_single_quotes ; 
 int /*<<< orphan*/  line_continuation_after_whitespace ; 
 int /*<<< orphan*/  line_continuation_before_whitespace ; 
 int /*<<< orphan*/  line_continuation_within_whitespace ; 
 int /*<<< orphan*/  line_continuation_within_word ; 
 int /*<<< orphan*/  multiple_whitespace ; 
 int /*<<< orphan*/  naked_double_quote ; 
 int /*<<< orphan*/  naked_escape ; 
 int /*<<< orphan*/  naked_single_quote ; 
 int /*<<< orphan*/  single_quote_after_word ; 
 int /*<<< orphan*/  single_quote_before_word ; 
 int /*<<< orphan*/  single_quote_within_word ; 
 int /*<<< orphan*/  single_quoted_comment ; 
 int /*<<< orphan*/  single_quoted_whitespace ; 
 int /*<<< orphan*/  single_quoted_words ; 
 int /*<<< orphan*/  single_quotes_within_double_quotes ; 
 int /*<<< orphan*/  single_whitespace ; 
 int /*<<< orphan*/  single_whitespace_after_word ; 
 int /*<<< orphan*/  single_whitespace_before_word ; 
 int /*<<< orphan*/  single_word ; 
 int /*<<< orphan*/  two_words ; 
 int /*<<< orphan*/  unterminated_line ; 
 int /*<<< orphan*/  whitespace_before_comment ; 
 int /*<<< orphan*/  word_containing_hash ; 

__attribute__((used)) static int
FUNC1(int argc, char *argv[])
{

	(void)argc;
	(void)argv;

	FUNC0(empty_input);
	FUNC0(empty_line);
	FUNC0(unterminated_line);
	FUNC0(single_whitespace);
	FUNC0(multiple_whitespace);
	FUNC0(comment);
	FUNC0(whitespace_before_comment);
	FUNC0(single_quoted_comment);
	FUNC0(double_quoted_comment);
	FUNC0(comment_at_eof);

	FUNC0(single_word);
	FUNC0(single_whitespace_before_word);
	FUNC0(double_whitespace_before_word);
	FUNC0(single_whitespace_after_word);
	FUNC0(double_whitespace_after_word);
	FUNC0(comment_after_word);
	FUNC0(word_containing_hash);
	FUNC0(two_words);

	FUNC0(naked_escape);
	FUNC0(escaped_escape);
	FUNC0(escaped_whitespace);
	FUNC0(escaped_newline_before_word);
	FUNC0(escaped_newline_within_word);
	FUNC0(escaped_newline_after_word);
	FUNC0(escaped_letter);
	FUNC0(escaped_comment);
	FUNC0(escape_at_eof);

	FUNC0(naked_single_quote);
	FUNC0(naked_double_quote);
	FUNC0(empty_single_quotes);
	FUNC0(empty_double_quotes);
	FUNC0(single_quotes_within_double_quotes);
	FUNC0(double_quotes_within_single_quotes);
	FUNC0(single_quoted_whitespace);
	FUNC0(double_quoted_whitespace);
	FUNC0(single_quoted_words);
	FUNC0(double_quoted_words);

	FUNC0(single_quote_before_word);
	FUNC0(double_quote_before_word);
	FUNC0(single_quote_within_word);
	FUNC0(double_quote_within_word);
	FUNC0(single_quote_after_word);
	FUNC0(double_quote_after_word);

	FUNC0(escaped_single_quote);
	FUNC0(escaped_double_quote);
	FUNC0(escaped_whitespace_within_single_quotes);
	FUNC0(escaped_whitespace_within_double_quotes);
	FUNC0(escaped_letter_within_single_quotes);
	FUNC0(escaped_letter_within_double_quotes);
	FUNC0(escaped_escape_within_single_quotes);
	FUNC0(escaped_escape_within_double_quotes);
	FUNC0(escaped_single_quote_within_single_quotes);
	FUNC0(escaped_double_quote_within_single_quotes);
	FUNC0(escaped_single_quote_within_double_quotes);
	FUNC0(escaped_double_quote_within_double_quotes);

	FUNC0(line_continuation_within_whitespace);
	FUNC0(line_continuation_before_whitespace);
	FUNC0(line_continuation_after_whitespace);
	FUNC0(line_continuation_within_word);

	return (0);
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T (int ) ;
 int comment ;
 int comment_after_word ;
 int comment_at_eof ;
 int double_quote_after_word ;
 int double_quote_before_word ;
 int double_quote_within_word ;
 int double_quoted_comment ;
 int double_quoted_whitespace ;
 int double_quoted_words ;
 int double_quotes_within_single_quotes ;
 int double_whitespace_after_word ;
 int double_whitespace_before_word ;
 int empty_double_quotes ;
 int empty_input ;
 int empty_line ;
 int empty_single_quotes ;
 int escape_at_eof ;
 int escaped_comment ;
 int escaped_double_quote ;
 int escaped_double_quote_within_double_quotes ;
 int escaped_double_quote_within_single_quotes ;
 int escaped_escape ;
 int escaped_escape_within_double_quotes ;
 int escaped_escape_within_single_quotes ;
 int escaped_letter ;
 int escaped_letter_within_double_quotes ;
 int escaped_letter_within_single_quotes ;
 int escaped_newline_after_word ;
 int escaped_newline_before_word ;
 int escaped_newline_within_word ;
 int escaped_single_quote ;
 int escaped_single_quote_within_double_quotes ;
 int escaped_single_quote_within_single_quotes ;
 int escaped_whitespace ;
 int escaped_whitespace_within_double_quotes ;
 int escaped_whitespace_within_single_quotes ;
 int line_continuation_after_whitespace ;
 int line_continuation_before_whitespace ;
 int line_continuation_within_whitespace ;
 int line_continuation_within_word ;
 int multiple_whitespace ;
 int naked_double_quote ;
 int naked_escape ;
 int naked_single_quote ;
 int single_quote_after_word ;
 int single_quote_before_word ;
 int single_quote_within_word ;
 int single_quoted_comment ;
 int single_quoted_whitespace ;
 int single_quoted_words ;
 int single_quotes_within_double_quotes ;
 int single_whitespace ;
 int single_whitespace_after_word ;
 int single_whitespace_before_word ;
 int single_word ;
 int two_words ;
 int unterminated_line ;
 int whitespace_before_comment ;
 int word_containing_hash ;

__attribute__((used)) static int
t_prepare(int argc, char *argv[])
{

 (void)argc;
 (void)argv;

 T(empty_input);
 T(empty_line);
 T(unterminated_line);
 T(single_whitespace);
 T(multiple_whitespace);
 T(comment);
 T(whitespace_before_comment);
 T(single_quoted_comment);
 T(double_quoted_comment);
 T(comment_at_eof);

 T(single_word);
 T(single_whitespace_before_word);
 T(double_whitespace_before_word);
 T(single_whitespace_after_word);
 T(double_whitespace_after_word);
 T(comment_after_word);
 T(word_containing_hash);
 T(two_words);

 T(naked_escape);
 T(escaped_escape);
 T(escaped_whitespace);
 T(escaped_newline_before_word);
 T(escaped_newline_within_word);
 T(escaped_newline_after_word);
 T(escaped_letter);
 T(escaped_comment);
 T(escape_at_eof);

 T(naked_single_quote);
 T(naked_double_quote);
 T(empty_single_quotes);
 T(empty_double_quotes);
 T(single_quotes_within_double_quotes);
 T(double_quotes_within_single_quotes);
 T(single_quoted_whitespace);
 T(double_quoted_whitespace);
 T(single_quoted_words);
 T(double_quoted_words);

 T(single_quote_before_word);
 T(double_quote_before_word);
 T(single_quote_within_word);
 T(double_quote_within_word);
 T(single_quote_after_word);
 T(double_quote_after_word);

 T(escaped_single_quote);
 T(escaped_double_quote);
 T(escaped_whitespace_within_single_quotes);
 T(escaped_whitespace_within_double_quotes);
 T(escaped_letter_within_single_quotes);
 T(escaped_letter_within_double_quotes);
 T(escaped_escape_within_single_quotes);
 T(escaped_escape_within_double_quotes);
 T(escaped_single_quote_within_single_quotes);
 T(escaped_double_quote_within_single_quotes);
 T(escaped_single_quote_within_double_quotes);
 T(escaped_double_quote_within_double_quotes);

 T(line_continuation_within_whitespace);
 T(line_continuation_before_whitespace);
 T(line_continuation_after_whitespace);
 T(line_continuation_within_word);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T (int ) ;
 int comment ;
 int empty_input ;
 int empty_line ;
 int line_continuation_within_whitespace ;
 int many_words ;
 int one_word ;
 int two_words ;
 int unterminated_empty_line ;
 int unterminated_line ;
 int whitespace ;
 int whitespace_before_comment ;

__attribute__((used)) static int
t_prepare(int argc, char *argv[])
{

 (void)argc;
 (void)argv;

 T(empty_input);
 T(empty_line);
 T(unterminated_empty_line);
 T(whitespace);
 T(comment);
 T(whitespace_before_comment);
 T(line_continuation_within_whitespace);

 T(one_word);
 T(two_words);
 T(many_words);
 T(unterminated_line);

 return (0);
}

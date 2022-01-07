
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
struct ucl_macro {int dummy; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; } ;


 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_lex_is_atom_end (unsigned char const) ;
 int ucl_lex_json_string (struct ucl_parser*,struct ucl_chunk*,int*,int*,int*) ;
 scalar_t__ ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_parse_macro_value (struct ucl_parser *parser,
  struct ucl_chunk *chunk, struct ucl_macro *macro,
  unsigned char const **macro_start, size_t *macro_len)
{
 const unsigned char *p, *c;
 bool need_unescape = 0, ucl_escape = 0, var_expand = 0;

 p = chunk->pos;

 switch (*p) {
 case '"':

  c = p;
  ucl_chunk_skipc (chunk, p);
  if (!ucl_lex_json_string (parser, chunk, &need_unescape, &ucl_escape, &var_expand)) {
   return 0;
  }

  *macro_start = c + 1;
  *macro_len = chunk->pos - c - 2;
  p = chunk->pos;
  break;
 case '{':

  ucl_chunk_skipc (chunk, p);

  while (p < chunk->end) {
   if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
    ucl_chunk_skipc (chunk, p);
   }
   else {
    break;
   }
  }
  c = p;
  while (p < chunk->end) {
   if (*p == '}') {
    break;
   }
   ucl_chunk_skipc (chunk, p);
  }
  *macro_start = c;
  *macro_len = p - c;
  ucl_chunk_skipc (chunk, p);
  break;
 default:

  c = p;
  while (p < chunk->end) {
   if (ucl_lex_is_atom_end (*p)) {
    break;
   }
   ucl_chunk_skipc (chunk, p);
  }
  *macro_start = c;
  *macro_len = p - c;
  break;
 }



 while (p < chunk->end) {
  if (!ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE) && *p != ';') {
   break;
  }
  ucl_chunk_skipc (chunk, p);
 }
 return 1;
}

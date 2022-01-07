
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int flags; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; } ;


 int UCL_CHARACTER_WHITESPACE ;
 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int UCL_PARSER_SAVE_COMMENTS ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_save_comment (struct ucl_parser*,unsigned char const*,int) ;
 int ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_skip_macro_as_comment (struct ucl_parser *parser,
  struct ucl_chunk *chunk)
{
 const unsigned char *p, *c;
 enum {
  macro_skip_start = 0,
  macro_has_symbols,
  macro_has_obrace,
  macro_has_quote,
  macro_has_backslash,
  macro_has_sqbrace,
  macro_save
 } state = macro_skip_start, prev_state = macro_skip_start;

 p = chunk->pos;
 c = chunk->pos;

 while (p < chunk->end) {
  switch (state) {
  case macro_skip_start:
   if (!ucl_test_character (*p, UCL_CHARACTER_WHITESPACE)) {
    state = macro_has_symbols;
   }
   else if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
    state = macro_save;
    continue;
   }

   ucl_chunk_skipc (chunk, p);
   break;

  case macro_has_symbols:
   if (*p == '{') {
    state = macro_has_sqbrace;
   }
   else if (*p == '(') {
    state = macro_has_obrace;
   }
   else if (*p == '"') {
    state = macro_has_quote;
   }
   else if (*p == '\n') {
    state = macro_save;
    continue;
   }

   ucl_chunk_skipc (chunk, p);
   break;

  case macro_has_obrace:
   if (*p == '\\') {
    prev_state = state;
    state = macro_has_backslash;
   }
   else if (*p == ')') {
    state = macro_has_symbols;
   }

   ucl_chunk_skipc (chunk, p);
   break;

  case macro_has_sqbrace:
   if (*p == '\\') {
    prev_state = state;
    state = macro_has_backslash;
   }
   else if (*p == '}') {
    state = macro_save;
   }

   ucl_chunk_skipc (chunk, p);
   break;

  case macro_has_quote:
   if (*p == '\\') {
    prev_state = state;
    state = macro_has_backslash;
   }
   else if (*p == '"') {
    state = macro_save;
   }

   ucl_chunk_skipc (chunk, p);
   break;

  case macro_has_backslash:
   state = prev_state;
   ucl_chunk_skipc (chunk, p);
   break;

  case macro_save:
   if (parser->flags & UCL_PARSER_SAVE_COMMENTS) {
    ucl_save_comment (parser, c, p - c);
   }

   return 1;
  }
 }

 return 0;
}

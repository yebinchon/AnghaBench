
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;


 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 scalar_t__ ucl_lex_is_atom_end (unsigned char const) ;
 scalar_t__ ucl_lex_is_comment (unsigned char const,unsigned char const) ;

__attribute__((used)) static bool
ucl_parse_string_value (struct ucl_parser *parser,
  struct ucl_chunk *chunk, bool *var_expand, bool *need_unescape)
{
 const unsigned char *p;
 enum {
  UCL_BRACE_ROUND = 0,
  UCL_BRACE_SQUARE,
  UCL_BRACE_FIGURE
 };
 int braces[3][2] = {{0, 0}, {0, 0}, {0, 0}};

 p = chunk->pos;

 while (p < chunk->end) {


  if (*p == '{') {
   braces[UCL_BRACE_FIGURE][0] ++;
  }
  else if (*p == '}') {
   braces[UCL_BRACE_FIGURE][1] ++;
   if (braces[UCL_BRACE_FIGURE][1] <= braces[UCL_BRACE_FIGURE][0]) {

    ucl_chunk_skipc (chunk, p);
    continue;
   }
  }

  else if (*p == '[') {
   braces[UCL_BRACE_SQUARE][0] ++;
  }
  else if (*p == ']') {
   braces[UCL_BRACE_SQUARE][1] ++;
   if (braces[UCL_BRACE_SQUARE][1] <= braces[UCL_BRACE_SQUARE][0]) {

    ucl_chunk_skipc (chunk, p);
    continue;
   }
  }
  else if (*p == '$') {
   *var_expand = 1;
  }
  else if (*p == '\\') {
   *need_unescape = 1;
   ucl_chunk_skipc (chunk, p);
   if (p < chunk->end) {
    ucl_chunk_skipc (chunk, p);
   }
   continue;
  }

  if (ucl_lex_is_atom_end (*p) || (chunk->remain >= 2 && ucl_lex_is_comment (p[0], p[1]))) {
   break;
  }
  ucl_chunk_skipc (chunk, p);
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int err; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; } ;


 int UCL_CHARACTER_ESCAPE ;
 int UCL_CHARACTER_UCL_UNSAFE ;
 int UCL_ESYNTAX ;
 int isxdigit (unsigned char const) ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 scalar_t__ ucl_test_character (unsigned char,int ) ;

__attribute__((used)) static bool
ucl_lex_json_string (struct ucl_parser *parser,
  struct ucl_chunk *chunk, bool *need_unescape, bool *ucl_escape, bool *var_expand)
{
 const unsigned char *p = chunk->pos;
 unsigned char c;
 int i;

 while (p < chunk->end) {
  c = *p;
  if (c < 0x1F) {

   if (c == '\n') {
    ucl_set_err (parser, UCL_ESYNTAX, "unexpected newline",
      &parser->err);
   }
   else {
    ucl_set_err (parser, UCL_ESYNTAX, "unexpected control character",
      &parser->err);
   }
   return 0;
  }
  else if (c == '\\') {
   ucl_chunk_skipc (chunk, p);
   c = *p;
   if (p >= chunk->end) {
    ucl_set_err (parser, UCL_ESYNTAX, "unfinished escape character",
      &parser->err);
    return 0;
   }
   else if (ucl_test_character (c, UCL_CHARACTER_ESCAPE)) {
    if (c == 'u') {
     ucl_chunk_skipc (chunk, p);
     for (i = 0; i < 4 && p < chunk->end; i ++) {
      if (!isxdigit (*p)) {
       ucl_set_err (parser, UCL_ESYNTAX, "invalid utf escape",
         &parser->err);
       return 0;
      }
      ucl_chunk_skipc (chunk, p);
     }
     if (p >= chunk->end) {
      ucl_set_err (parser, UCL_ESYNTAX, "unfinished escape character",
        &parser->err);
      return 0;
     }
    }
    else {
     ucl_chunk_skipc (chunk, p);
    }
   }
   *need_unescape = 1;
   *ucl_escape = 1;
   continue;
  }
  else if (c == '"') {
   ucl_chunk_skipc (chunk, p);
   return 1;
  }
  else if (ucl_test_character (c, UCL_CHARACTER_UCL_UNSAFE)) {
   *ucl_escape = 1;
  }
  else if (c == '$') {
   *var_expand = 1;
  }
  ucl_chunk_skipc (chunk, p);
 }

 ucl_set_err (parser, UCL_ESYNTAX, "no quote at the end of json string",
   &parser->err);
 return 0;
}

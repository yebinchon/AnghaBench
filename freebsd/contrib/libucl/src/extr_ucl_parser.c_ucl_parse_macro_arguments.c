
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser_saved_state {unsigned char* pos; int remain; int line; int column; } ;
struct ucl_parser {int err; int flags; } ;
struct ucl_chunk {unsigned char* pos; int remain; unsigned char const* end; int line; int column; } ;


 int UCL_ESYNTAX ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_parser_add_chunk (struct ucl_parser*,unsigned char const*,size_t) ;
 int ucl_parser_free (struct ucl_parser*) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;

__attribute__((used)) static ucl_object_t *
ucl_parse_macro_arguments (struct ucl_parser *parser,
  struct ucl_chunk *chunk)
{
 ucl_object_t *res = ((void*)0);
 struct ucl_parser *params_parser;
 int obraces = 1, ebraces = 0, state = 0;
 const unsigned char *p, *c;
 size_t args_len = 0;
 struct ucl_parser_saved_state saved;

 saved.column = chunk->column;
 saved.line = chunk->line;
 saved.pos = chunk->pos;
 saved.remain = chunk->remain;
 p = chunk->pos;

 if (*p != '(' || chunk->remain < 2) {
  return ((void*)0);
 }


 ucl_chunk_skipc (chunk, p);
 c = p;

 while ((p) < (chunk)->end) {
  switch (state) {
  case 0:

   if (*p == '(') {
    obraces ++;
   }
   else if (*p == ')') {
    ebraces ++;
   }
   else if (*p == '"') {
    state = 1;
   }

   if (obraces == ebraces) {
    state = 99;
   }
   else {
    args_len ++;
   }

   if (chunk->remain == 0) {
    goto restore_chunk;
   }
   ucl_chunk_skipc (chunk, p);
   break;
  case 1:

   if (*p == '"' && *(p - 1) != '\\') {
    state = 0;
   }
   if (chunk->remain == 0) {
    goto restore_chunk;
   }
   args_len ++;
   ucl_chunk_skipc (chunk, p);
   break;
  case 99:




   params_parser = ucl_parser_new (parser->flags);
   if (!ucl_parser_add_chunk (params_parser, c, args_len)) {
    ucl_set_err (parser, UCL_ESYNTAX, "macro arguments parsing error",
      &parser->err);
   }
   else {
    res = ucl_parser_get_object (params_parser);
   }
   ucl_parser_free (params_parser);

   return res;

   break;
  }
 }

 return res;

restore_chunk:
 chunk->column = saved.column;
 chunk->line = saved.line;
 chunk->pos = saved.pos;
 chunk->remain = saved.remain;

 return ((void*)0);
}

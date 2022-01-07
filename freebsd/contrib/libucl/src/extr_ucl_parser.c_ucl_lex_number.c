
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int flags; int err; } ;
struct ucl_chunk {unsigned char const* pos; int column; int remain; int end; } ;


 int ERANGE ;
 int UCL_ESYNTAX ;
 int UCL_PARSER_NO_TIME ;
 int ucl_maybe_parse_number (int *,unsigned char const*,int ,char const**,int,int,int) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;

__attribute__((used)) static bool
ucl_lex_number (struct ucl_parser *parser,
  struct ucl_chunk *chunk, ucl_object_t *obj)
{
 const unsigned char *pos;
 int ret;

 ret = ucl_maybe_parse_number (obj, chunk->pos, chunk->end, (const char **)&pos,
   1, 0, ((parser->flags & UCL_PARSER_NO_TIME) == 0));

 if (ret == 0) {
  chunk->remain -= pos - chunk->pos;
  chunk->column += pos - chunk->pos;
  chunk->pos = pos;
  return 1;
 }
 else if (ret == ERANGE) {
  ucl_set_err (parser, UCL_ESYNTAX, "numeric value out of range",
    &parser->err);
 }

 return 0;
}

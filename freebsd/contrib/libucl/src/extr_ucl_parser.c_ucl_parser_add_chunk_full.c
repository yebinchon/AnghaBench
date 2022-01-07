
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {scalar_t__ state; scalar_t__ recursion; int err; int * top_obj; int chunks; } ;
struct ucl_chunk {unsigned char const* begin; size_t remain; unsigned char const* pos; unsigned char const* end; int line; unsigned int priority; int strategy; int parse_type; scalar_t__ column; } ;
typedef enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;
typedef enum ucl_duplicate_strategy { ____Placeholder_ucl_duplicate_strategy } ucl_duplicate_strategy ;


 int LL_PREPEND (int ,struct ucl_chunk*) ;
 struct ucl_chunk* UCL_ALLOC (int) ;
 scalar_t__ UCL_MAX_RECURSION ;
 int UCL_OBJECT ;
 int UCL_PARSE_AUTO ;



 scalar_t__ UCL_STATE_ERROR ;
 int ucl_create_err (int *,char*,...) ;
 int * ucl_object_new_full (int ,unsigned int) ;
 int ucl_parse_csexp (struct ucl_parser*) ;
 int ucl_parse_msgpack (struct ucl_parser*) ;
 int ucl_state_machine (struct ucl_parser*) ;

bool
ucl_parser_add_chunk_full (struct ucl_parser *parser, const unsigned char *data,
  size_t len, unsigned priority, enum ucl_duplicate_strategy strat,
  enum ucl_parse_type parse_type)
{
 struct ucl_chunk *chunk;

 if (parser == ((void*)0)) {
  return 0;
 }

 if (data == ((void*)0) && len != 0) {
  ucl_create_err (&parser->err, "invalid chunk added");
  return 0;
 }

 if (parser->state != UCL_STATE_ERROR) {
  chunk = UCL_ALLOC (sizeof (struct ucl_chunk));
  if (chunk == ((void*)0)) {
   ucl_create_err (&parser->err, "cannot allocate chunk structure");
   return 0;
  }

  if (parse_type == UCL_PARSE_AUTO && len > 0) {

   if ((*data & 0x80) == 0x80 && (*data >= 0xdc && *data <= 0xdf)) {
    parse_type = 129;
   }
   else if (*data == '(') {
    parse_type = 130;
   }
   else {
    parse_type = 128;
   }
  }

  chunk->begin = data;
  chunk->remain = len;
  chunk->pos = chunk->begin;
  chunk->end = chunk->begin + len;
  chunk->line = 1;
  chunk->column = 0;
  chunk->priority = priority;
  chunk->strategy = strat;
  chunk->parse_type = parse_type;
  LL_PREPEND (parser->chunks, chunk);
  parser->recursion ++;

  if (parser->recursion > UCL_MAX_RECURSION) {
   ucl_create_err (&parser->err, "maximum include nesting limit is reached: %d",
     parser->recursion);
   return 0;
  }

  if (len > 0) {

   switch (parse_type) {
   default:
   case 128:
    return ucl_state_machine (parser);
   case 129:
    return ucl_parse_msgpack (parser);
   case 130:
    return ucl_parse_csexp (parser);
   }
  }
  else {

   if (parser->top_obj == ((void*)0)) {




    parser->top_obj = ucl_object_new_full (UCL_OBJECT, priority);
   }

   return 1;
  }
 }

 ucl_create_err (&parser->err, "a parser is in an invalid state");

 return 0;
}

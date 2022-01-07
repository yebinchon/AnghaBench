
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucl_stack {scalar_t__ level; TYPE_1__* obj; struct ucl_stack* next; } ;
struct ucl_parser {int err; struct ucl_stack* stack; TYPE_1__* cur_obj; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ UCL_ARRAY ;
 int UCL_CHARACTER_VALUE_END ;
 int UCL_CHARACTER_WHITESPACE ;
 int UCL_ESYNTAX ;
 int UCL_FREE (int,struct ucl_stack*) ;
 scalar_t__ UCL_OBJECT ;
 int ucl_attach_comment (struct ucl_parser*,TYPE_1__*,int) ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 scalar_t__ ucl_lex_is_comment (unsigned char const,unsigned char const) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 int ucl_skip_comments (struct ucl_parser*) ;
 scalar_t__ ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_parse_after_value (struct ucl_parser *parser, struct ucl_chunk *chunk)
{
 const unsigned char *p;
 bool got_sep = 0;
 struct ucl_stack *st;

 p = chunk->pos;

 while (p < chunk->end) {
  if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE)) {

   ucl_chunk_skipc (chunk, p);
  }
  else if (chunk->remain >= 2 && ucl_lex_is_comment (p[0], p[1])) {

   if (!ucl_skip_comments (parser)) {
    return 0;
   }

   got_sep = 1;
   p = chunk->pos;
  }
  else if (ucl_test_character (*p, UCL_CHARACTER_VALUE_END)) {
   if (*p == '}' || *p == ']') {
    if (parser->stack == ((void*)0)) {
     ucl_set_err (parser, UCL_ESYNTAX,
       "end of array or object detected without corresponding start",
       &parser->err);
     return 0;
    }
    if ((*p == '}' && parser->stack->obj->type == UCL_OBJECT) ||
      (*p == ']' && parser->stack->obj->type == UCL_ARRAY)) {


     st = parser->stack;
     parser->stack = st->next;
     UCL_FREE (sizeof (struct ucl_stack), st);

     if (parser->cur_obj) {
      ucl_attach_comment (parser, parser->cur_obj, 1);
     }

     while (parser->stack != ((void*)0)) {
      st = parser->stack;

      if (st->next == ((void*)0) || st->next->level == st->level) {
       break;
      }

      parser->stack = st->next;
      parser->cur_obj = st->obj;
      UCL_FREE (sizeof (struct ucl_stack), st);
     }
    }
    else {
     ucl_set_err (parser, UCL_ESYNTAX,
       "unexpected terminating symbol detected",
       &parser->err);
     return 0;
    }

    if (parser->stack == ((void*)0)) {

     return 1;
    }
    else {
     ucl_chunk_skipc (chunk, p);
    }
    got_sep = 1;
   }
   else {

    got_sep = 1;
    ucl_chunk_skipc (chunk, p);
   }
  }
  else {

   if (!got_sep) {
    ucl_set_err (parser, UCL_ESYNTAX, "delimiter is missing",
      &parser->err);
    return 0;
   }
   return 1;
  }
 }

 return 1;
}

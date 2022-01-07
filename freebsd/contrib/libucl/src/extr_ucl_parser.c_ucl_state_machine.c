
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int type; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_parser {int state; int prev_state; int flags; TYPE_3__* last_comment; TYPE_3__* top_obj; TYPE_2__* stack; TYPE_3__* cur_obj; int err; struct ucl_chunk* chunks; int macroes; } ;
struct TYPE_15__ {int (* context_handler ) (unsigned char const*,size_t,TYPE_3__*,TYPE_3__*,int ) ;int (* handler ) (unsigned char const*,size_t,TYPE_3__*,int ) ;} ;
struct ucl_macro {int ud; TYPE_1__ h; int is_context; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int column; int line; } ;
struct TYPE_16__ {TYPE_3__* obj; int level; } ;


 int HASH_FIND (int ,int ,unsigned char const*,size_t,struct ucl_macro*) ;
 int SKIP_SPACES_COMMENTS (struct ucl_parser*,struct ucl_chunk*,unsigned char const*) ;
 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int UCL_EINTERNAL ;
 int UCL_ESYNTAX ;
 int UCL_FREE (size_t,unsigned char*) ;
 int UCL_OBJECT ;
 int UCL_PARSER_DISABLE_MACRO ;

 void* UCL_STATE_ERROR ;





 int hh ;
 int stub1 (unsigned char const*,size_t,TYPE_3__*,TYPE_3__*,int ) ;
 int stub2 (unsigned char const*,size_t,TYPE_3__*,int ) ;
 int stub3 (unsigned char*,size_t,TYPE_3__*,TYPE_3__*,int ) ;
 int stub4 (unsigned char*,size_t,TYPE_3__*,int ) ;
 int ucl_attach_comment (struct ucl_parser*,TYPE_3__*,int) ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_create_err (int *,char*,int ,int ,...) ;
 size_t ucl_expand_variable (struct ucl_parser*,unsigned char**,unsigned char const*,size_t) ;
 int ucl_object_unref (TYPE_3__*) ;
 int ucl_parse_after_value (struct ucl_parser*,struct ucl_chunk*) ;
 int ucl_parse_key (struct ucl_parser*,struct ucl_chunk*,int*,int*) ;
 TYPE_3__* ucl_parse_macro_arguments (struct ucl_parser*,struct ucl_chunk*) ;
 int ucl_parse_macro_value (struct ucl_parser*,struct ucl_chunk*,struct ucl_macro*,unsigned char const**,size_t*) ;
 int ucl_parse_value (struct ucl_parser*,struct ucl_chunk*) ;
 TYPE_3__* ucl_parser_add_container (TYPE_3__*,struct ucl_parser*,int,int ) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 int ucl_skip_comments (struct ucl_parser*) ;
 int ucl_skip_macro_as_comment (struct ucl_parser*,struct ucl_chunk*) ;
 int ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_state_machine (struct ucl_parser *parser)
{
 ucl_object_t *obj, *macro_args;
 struct ucl_chunk *chunk = parser->chunks;
 const unsigned char *p, *c = ((void*)0), *macro_start = ((void*)0);
 unsigned char *macro_escaped;
 size_t macro_len = 0;
 struct ucl_macro *macro = ((void*)0);
 bool next_key = 0, end_of_object = 0, ret;

 if (parser->top_obj == ((void*)0)) {
  parser->state = 132;
 }

 p = chunk->pos;
 while (chunk->pos < chunk->end) {
  switch (parser->state) {
  case 132:





   if (!ucl_skip_comments (parser)) {
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }
   else {

    while (p < chunk->end && ucl_test_character (*p,
      UCL_CHARACTER_WHITESPACE_UNSAFE)) {
     ucl_chunk_skipc (chunk, p);
    }

    p = chunk->pos;

    if (*p == '[') {
     parser->state = 128;
     ucl_chunk_skipc (chunk, p);
    }
    else {
     parser->state = 131;
     if (*p == '{') {
      ucl_chunk_skipc (chunk, p);
     }
    }

    if (parser->top_obj == ((void*)0)) {
     if (parser->state == 128) {
      obj = ucl_parser_add_container (((void*)0), parser, 1, 0);
     }
     else {
      obj = ucl_parser_add_container (((void*)0), parser, 0, 0);
     }

     if (obj == ((void*)0)) {
      return 0;
     }

     parser->top_obj = obj;
     parser->cur_obj = obj;
    }

   }
   break;
  case 131:

   while (p < chunk->end && ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
    ucl_chunk_skipc (chunk, p);
   }
   if (p == chunk->end || *p == '}') {

    parser->state = 133;
    continue;
   }
   if (parser->stack == ((void*)0)) {

    ucl_set_err (parser, UCL_ESYNTAX, "top object is finished but the parser "
      "expects a key", &parser->err);
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }
   if (!ucl_parse_key (parser, chunk, &next_key, &end_of_object)) {
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }
   if (end_of_object) {
    p = chunk->pos;
    parser->state = 133;
    continue;
   }
   else if (parser->state != 129) {
    if (next_key && parser->stack->obj->type == UCL_OBJECT) {

     obj = ucl_parser_add_container (parser->cur_obj, parser, 0,
       parser->stack->level + 1);
     if (obj == ((void*)0)) {
      return 0;
     }
    }
    else {
     parser->state = 128;
    }
   }
   else {
    c = chunk->pos;
   }
   p = chunk->pos;
   break;
  case 128:

   if (!parser->cur_obj || !ucl_parse_value (parser, chunk)) {
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }

   p = chunk->pos;
   break;
  case 133:
   if (!ucl_parse_after_value (parser, chunk)) {
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }

   if (parser->stack != ((void*)0)) {
    if (parser->stack->obj->type == UCL_OBJECT) {
     parser->state = 131;
    }
    else {

     parser->state = 128;
    }
   }
   else {

    return 1;
   }

   p = chunk->pos;
   break;
  case 129:
   if (parser->flags & UCL_PARSER_DISABLE_MACRO) {
    if (!ucl_skip_macro_as_comment (parser, chunk)) {

     ucl_create_err (&parser->err,
       "error on line %d at column %d: invalid macro",
       chunk->line,
       chunk->column);
     parser->state = UCL_STATE_ERROR;
     return 0;
    }
    else {
     p = chunk->pos;
     parser->state = parser->prev_state;
    }
   }
   else {
    if (!ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE) &&
      *p != '(') {
     ucl_chunk_skipc (chunk, p);
    }
    else {
     if (c != ((void*)0) && p - c > 0) {

      macro_len = (size_t) (p - c);
      HASH_FIND (hh, parser->macroes, c, macro_len, macro);
      if (macro == ((void*)0)) {
       ucl_create_err (&parser->err,
         "error on line %d at column %d: "
         "unknown macro: '%.*s', character: '%c'",
         chunk->line,
         chunk->column,
         (int) (p - c),
         c,
         *chunk->pos);
       parser->state = UCL_STATE_ERROR;
       return 0;
      }

      SKIP_SPACES_COMMENTS(parser, chunk, p);
      parser->state = 130;
     }
     else {

      ucl_create_err (&parser->err,
        "error on line %d at column %d: invalid macro name",
        chunk->line,
        chunk->column);
      parser->state = UCL_STATE_ERROR;
      return 0;
     }
    }
   }
   break;
  case 130:
   if (*chunk->pos == '(') {
    macro_args = ucl_parse_macro_arguments (parser, chunk);
    p = chunk->pos;
    if (macro_args) {
     SKIP_SPACES_COMMENTS(parser, chunk, p);
    }
   }
   else {
    macro_args = ((void*)0);
   }
   if (!ucl_parse_macro_value (parser, chunk, macro,
     &macro_start, &macro_len)) {
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_ERROR;
    return 0;
   }
   macro_len = ucl_expand_variable (parser, &macro_escaped,
     macro_start, macro_len);
   parser->state = parser->prev_state;

   if (macro_escaped == ((void*)0) && macro != ((void*)0)) {
    if (macro->is_context) {
     ret = macro->h.context_handler (macro_start, macro_len,
       macro_args,
       parser->top_obj,
       macro->ud);
    }
    else {
     ret = macro->h.handler (macro_start, macro_len, macro_args,
       macro->ud);
    }
   }
   else if (macro != ((void*)0)) {
    if (macro->is_context) {
     ret = macro->h.context_handler (macro_escaped, macro_len,
       macro_args,
       parser->top_obj,
       macro->ud);
    }
    else {
     ret = macro->h.handler (macro_escaped, macro_len, macro_args,
      macro->ud);
    }

    UCL_FREE (macro_len + 1, macro_escaped);
   }
   else {
    ret = 0;
    ucl_set_err (parser, UCL_EINTERNAL,
      "internal error: parser has macro undefined", &parser->err);
   }




   chunk = parser->chunks;
   p = chunk->pos;

   if (macro_args) {
    ucl_object_unref (macro_args);
   }

   if (!ret) {
    return 0;
   }
   break;
  default:
   ucl_set_err (parser, UCL_EINTERNAL,
     "internal error: parser is in an unknown state", &parser->err);
   parser->state = UCL_STATE_ERROR;
   return 0;
  }
 }

 if (parser->last_comment) {
  if (parser->cur_obj) {
   ucl_attach_comment (parser, parser->cur_obj, 1);
  }
  else if (parser->stack && parser->stack->obj) {
   ucl_attach_comment (parser, parser->stack->obj, 1);
  }
  else if (parser->top_obj) {
   ucl_attach_comment (parser, parser->top_obj, 1);
  }
  else {
   ucl_object_unref (parser->last_comment);
  }
 }

 return 1;
}

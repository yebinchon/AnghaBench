
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int sv; } ;
struct TYPE_13__ {int len; TYPE_3__ value; int * trash_stack; void* type; int flags; } ;
typedef TYPE_4__ ucl_object_t ;
struct ucl_parser {void* state; int err; TYPE_2__* stack; } ;
struct ucl_chunk {unsigned char* pos; int remain; unsigned char const* end; int line; int column; } ;
struct TYPE_11__ {TYPE_1__* obj; int level; } ;
struct TYPE_10__ {int type; } ;


 int UCL_ARRAY ;
 int UCL_CHARACTER_VALUE_DIGIT_START ;
 int UCL_CHARACTER_WHITESPACE ;
 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int UCL_ESYNTAX ;
 void* UCL_NULL ;
 int UCL_OBJECT_MULTILINE ;
 void* UCL_STATE_AFTER_VALUE ;
 void* UCL_STATE_ERROR ;
 void* UCL_STRING ;
 size_t UCL_TRASH_VALUE ;
 int memcmp (unsigned char const*,char*,int) ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_copy_or_store_ptr (struct ucl_parser*,unsigned char const*,int *,int *,int,int,int,int) ;
 scalar_t__ ucl_lex_is_comment (unsigned char const,unsigned char const) ;
 int ucl_lex_json_string (struct ucl_parser*,struct ucl_chunk*,int*,int*,int*) ;
 int ucl_lex_number (struct ucl_parser*,struct ucl_chunk*,TYPE_4__*) ;
 int ucl_maybe_parse_boolean (TYPE_4__*,unsigned char const*,int) ;
 int ucl_parse_multiline_string (struct ucl_parser*,struct ucl_chunk*,unsigned char const*,int,unsigned char const**,int*) ;
 int ucl_parse_string_value (struct ucl_parser*,struct ucl_chunk*,int*,int*) ;
 TYPE_4__* ucl_parser_add_container (TYPE_4__*,struct ucl_parser*,int,int ) ;
 TYPE_4__* ucl_parser_get_container (struct ucl_parser*) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 int ucl_skip_comments (struct ucl_parser*) ;
 scalar_t__ ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_parse_value (struct ucl_parser *parser, struct ucl_chunk *chunk)
{
 const unsigned char *p, *c;
 ucl_object_t *obj = ((void*)0);
 unsigned int stripped_spaces;
 int str_len;
 bool need_unescape = 0, ucl_escape = 0, var_expand = 0;

 p = chunk->pos;


 if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE) ||
   (chunk->remain >= 2 && ucl_lex_is_comment (p[0], p[1]))) {
  while (p < chunk->end && ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
   ucl_chunk_skipc (chunk, p);
  }
  if (!ucl_skip_comments (parser)) {
   return 0;
  }
  p = chunk->pos;
 }

 while (p < chunk->end) {
  c = p;
  switch (*p) {
  case '"':
   ucl_chunk_skipc (chunk, p);

   if (!ucl_lex_json_string (parser, chunk, &need_unescape, &ucl_escape,
     &var_expand)) {
    return 0;
   }

   obj = ucl_parser_get_container (parser);
   if (!obj) {
    return 0;
   }

   str_len = chunk->pos - c - 2;
   obj->type = UCL_STRING;
   if ((str_len = ucl_copy_or_store_ptr (parser, c + 1,
     &obj->trash_stack[UCL_TRASH_VALUE],
     &obj->value.sv, str_len, need_unescape, 0,
     var_expand)) == -1) {
    return 0;
   }
   obj->len = str_len;

   parser->state = UCL_STATE_AFTER_VALUE;
   p = chunk->pos;

   return 1;
   break;
  case '{':
   obj = ucl_parser_get_container (parser);

   obj = ucl_parser_add_container (obj, parser, 0, parser->stack->level);
   if (obj == ((void*)0)) {
    return 0;
   }

   ucl_chunk_skipc (chunk, p);

   return 1;
   break;
  case '[':
   obj = ucl_parser_get_container (parser);

   obj = ucl_parser_add_container (obj, parser, 1, parser->stack->level);
   if (obj == ((void*)0)) {
    return 0;
   }

   ucl_chunk_skipc (chunk, p);

   return 1;
   break;
  case ']':

   if (parser->stack && parser->stack->obj->type == UCL_ARRAY) {
    parser->state = UCL_STATE_AFTER_VALUE;
    return 1;
   }
   else {
    goto parse_string;
   }
   break;
  case '<':
   obj = ucl_parser_get_container (parser);

   if (chunk->end - p > 3) {
    if (memcmp (p, "<<", 2) == 0) {
     p += 2;

     while (p < chunk->end && *p >= 'A' && *p <= 'Z') {
      p ++;
     }
     if (*p =='\n') {

      c += 2;
      chunk->remain -= p - c;
      chunk->pos = p + 1;
      chunk->column = 0;
      chunk->line ++;
      if ((str_len = ucl_parse_multiline_string (parser, chunk, c,
        p - c, &c, &var_expand)) == 0) {
       ucl_set_err (parser, UCL_ESYNTAX,
         "unterminated multiline value", &parser->err);
       return 0;
      }

      obj->type = UCL_STRING;
      obj->flags |= UCL_OBJECT_MULTILINE;
      if ((str_len = ucl_copy_or_store_ptr (parser, c,
        &obj->trash_stack[UCL_TRASH_VALUE],
        &obj->value.sv, str_len - 1, 0,
        0, var_expand)) == -1) {
       return 0;
      }
      obj->len = str_len;

      parser->state = UCL_STATE_AFTER_VALUE;

      return 1;
     }
    }
   }

  default:
parse_string:
   if (obj == ((void*)0)) {
    obj = ucl_parser_get_container (parser);
   }


   if (ucl_test_character (*p, UCL_CHARACTER_VALUE_DIGIT_START)) {
    if (!ucl_lex_number (parser, chunk, obj)) {
     if (parser->state == UCL_STATE_ERROR) {
      return 0;
     }
    }
    else {
     parser->state = UCL_STATE_AFTER_VALUE;
     return 1;
    }

   }

   if (!ucl_parse_string_value (parser, chunk, &var_expand,
     &need_unescape)) {
    return 0;
   }

   stripped_spaces = 0;
   while (ucl_test_character (*(chunk->pos - 1 - stripped_spaces),
     UCL_CHARACTER_WHITESPACE)) {
    stripped_spaces ++;
   }
   str_len = chunk->pos - c - stripped_spaces;
   if (str_len <= 0) {
    ucl_set_err (parser, UCL_ESYNTAX, "string value must not be empty",
      &parser->err);
    return 0;
   }
   else if (str_len == 4 && memcmp (c, "null", 4) == 0) {
    obj->len = 0;
    obj->type = UCL_NULL;
   }
   else if (!ucl_maybe_parse_boolean (obj, c, str_len)) {
    obj->type = UCL_STRING;
    if ((str_len = ucl_copy_or_store_ptr (parser, c,
      &obj->trash_stack[UCL_TRASH_VALUE],
      &obj->value.sv, str_len, need_unescape,
      0, var_expand)) == -1) {
     return 0;
    }
    obj->len = str_len;
   }
   parser->state = UCL_STATE_AFTER_VALUE;
   p = chunk->pos;

   return 1;
   break;
  }
 }

 return 1;
}

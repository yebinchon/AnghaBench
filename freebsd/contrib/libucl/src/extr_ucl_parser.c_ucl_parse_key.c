
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* key; int keylen; int flags; int * trash_stack; } ;
typedef TYPE_2__ ucl_object_t ;
struct ucl_parser {int flags; int err; TYPE_1__* chunks; void* state; void* prev_state; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;
typedef int ssize_t ;
struct TYPE_6__ {int priority; } ;


 int UCL_CHARACTER_KEY ;
 int UCL_CHARACTER_KEY_SEP ;
 int UCL_CHARACTER_KEY_START ;
 int UCL_CHARACTER_WHITESPACE ;
 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int UCL_ESYNTAX ;
 int UCL_NULL ;
 int UCL_OBJECT_NEED_KEY_ESCAPE ;
 int UCL_PARSER_DISABLE_MACRO ;
 int UCL_PARSER_KEY_LOWERCASE ;
 void* UCL_STATE_MACRO_NAME ;
 size_t UCL_TRASH_KEY ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_copy_or_store_ptr (struct ucl_parser*,unsigned char const*,int *,char const**,int,int,int,int) ;
 scalar_t__ ucl_lex_is_comment (unsigned char const,unsigned char const) ;
 int ucl_lex_json_string (struct ucl_parser*,struct ucl_chunk*,int*,int*,int*) ;
 TYPE_2__* ucl_object_new_full (int ,int ) ;
 int ucl_object_unref (TYPE_2__*) ;
 int ucl_parser_process_object_element (struct ucl_parser*,TYPE_2__*) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 int ucl_skip_comments (struct ucl_parser*) ;
 scalar_t__ ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static bool
ucl_parse_key (struct ucl_parser *parser, struct ucl_chunk *chunk,
  bool *next_key, bool *end_of_object)
{
 const unsigned char *p, *c = ((void*)0), *end, *t;
 const char *key = ((void*)0);
 bool got_quote = 0, got_eq = 0, got_semicolon = 0,
   need_unescape = 0, ucl_escape = 0, var_expand = 0,
   got_content = 0, got_sep = 0;
 ucl_object_t *nobj;
 ssize_t keylen;

 p = chunk->pos;

 if (*p == '.') {

  if (!(parser->flags & UCL_PARSER_DISABLE_MACRO)) {
   ucl_chunk_skipc (chunk, p);
  }

  parser->prev_state = parser->state;
  parser->state = UCL_STATE_MACRO_NAME;
  *end_of_object = 0;
  return 1;
 }
 while (p < chunk->end) {



  if (c == ((void*)0)) {
   if (chunk->remain >= 2 && ucl_lex_is_comment (p[0], p[1])) {
    if (!ucl_skip_comments (parser)) {
     return 0;
    }
    p = chunk->pos;
   }
   else if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
    ucl_chunk_skipc (chunk, p);
   }
   else if (ucl_test_character (*p, UCL_CHARACTER_KEY_START)) {

    c = p;
    ucl_chunk_skipc (chunk, p);
    got_content = 1;
   }
   else if (*p == '"') {

    c = p + 1;
    got_quote = 1;
    got_content = 1;
    ucl_chunk_skipc (chunk, p);
   }
   else if (*p == '}') {

    *end_of_object = 1;
    return 1;
   }
   else if (*p == '.') {
    ucl_chunk_skipc (chunk, p);
    parser->prev_state = parser->state;
    parser->state = UCL_STATE_MACRO_NAME;
    return 1;
   }
   else {

    ucl_set_err (parser, UCL_ESYNTAX, "key must begin with a letter",
      &parser->err);
    return 0;
   }
  }
  else {

   if (!got_quote) {
    if (ucl_test_character (*p, UCL_CHARACTER_KEY)) {
     got_content = 1;
     ucl_chunk_skipc (chunk, p);
    }
    else if (ucl_test_character (*p, UCL_CHARACTER_KEY_SEP)) {
     end = p;
     break;
    }
    else {
     ucl_set_err (parser, UCL_ESYNTAX, "invalid character in a key",
       &parser->err);
     return 0;
    }
   }
   else {

    if (!ucl_lex_json_string (parser, chunk, &need_unescape, &ucl_escape, &var_expand)) {
     return 0;
    }

    end = chunk->pos - 1;
    p = chunk->pos;
    break;
   }
  }
 }

 if (p >= chunk->end && got_content) {
  ucl_set_err (parser, UCL_ESYNTAX, "unfinished key", &parser->err);
  return 0;
 }
 else if (!got_content) {
  return 1;
 }
 *end_of_object = 0;

 while (p < chunk->end) {
  if (ucl_test_character (*p, UCL_CHARACTER_WHITESPACE)) {
   ucl_chunk_skipc (chunk, p);
  }
  else if (*p == '=') {
   if (!got_eq && !got_semicolon) {
    ucl_chunk_skipc (chunk, p);
    got_eq = 1;
   }
   else {
    ucl_set_err (parser, UCL_ESYNTAX, "unexpected '=' character",
      &parser->err);
    return 0;
   }
  }
  else if (*p == ':') {
   if (!got_eq && !got_semicolon) {
    ucl_chunk_skipc (chunk, p);
    got_semicolon = 1;
   }
   else {
    ucl_set_err (parser, UCL_ESYNTAX, "unexpected ':' character",
      &parser->err);
    return 0;
   }
  }
  else if (chunk->remain >= 2 && ucl_lex_is_comment (p[0], p[1])) {

   if (!ucl_skip_comments (parser)) {
    return 0;
   }
   p = chunk->pos;
  }
  else {

   break;
  }
 }

 if (p >= chunk->end && got_content) {
  ucl_set_err (parser, UCL_ESYNTAX, "unfinished key", &parser->err);
  return 0;
 }

 got_sep = got_semicolon || got_eq;

 if (!got_sep) {







  t = p;
  *next_key = 0;
  while (ucl_test_character (*t, UCL_CHARACTER_WHITESPACE)) {
   t ++;
  }

  if (*t != '{' && *t != '[') {
   while (t < chunk->end) {
    if (*t == ',' || *t == ';' || *t == '\n' || *t == '\r') {
     break;
    }
    else if (*t == '{' || *t == '[') {
     *next_key = 1;
     break;
    }
    t ++;
   }
  }
 }


 nobj = ucl_object_new_full (UCL_NULL, parser->chunks->priority);
 keylen = ucl_copy_or_store_ptr (parser, c, &nobj->trash_stack[UCL_TRASH_KEY],
   &key, end - c, need_unescape, parser->flags & UCL_PARSER_KEY_LOWERCASE, 0);
 if (keylen == -1) {
  ucl_object_unref (nobj);
  return 0;
 }
 else if (keylen == 0) {
  ucl_set_err (parser, UCL_ESYNTAX, "empty keys are not allowed", &parser->err);
  ucl_object_unref (nobj);
  return 0;
 }

 nobj->key = key;
 nobj->keylen = keylen;

 if (!ucl_parser_process_object_element (parser, nobj)) {
  return 0;
 }

 if (ucl_escape) {
  nobj->flags |= UCL_OBJECT_NEED_KEY_ESCAPE;
 }


 return 1;
}

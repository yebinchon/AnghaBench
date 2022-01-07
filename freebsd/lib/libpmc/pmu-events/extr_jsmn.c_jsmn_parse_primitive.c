
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsmntok_t ;
typedef int jsmnerr_t ;
struct TYPE_4__ {int pos; } ;
typedef TYPE_1__ jsmn_parser ;


 int JSMN_ERROR_INVAL ;
 int JSMN_ERROR_NOMEM ;
 int JSMN_ERROR_PART ;
 int JSMN_PRIMITIVE ;
 int JSMN_SUCCESS ;
 int * jsmn_alloc_token (TYPE_1__*,int *,size_t) ;
 int jsmn_fill_token (int *,int ,int,int) ;

__attribute__((used)) static jsmnerr_t jsmn_parse_primitive(jsmn_parser *parser, const char *js,
          size_t len,
          jsmntok_t *tokens, size_t num_tokens)
{
 jsmntok_t *token;
 int start;

 start = parser->pos;

 for (; parser->pos < len; parser->pos++) {
  switch (js[parser->pos]) {





  case ':':

  case '\t':
  case '\r':
  case '\n':
  case ' ':
  case ',':
  case ']':
  case '}':
   goto found;
  default:
   break;
  }
  if (js[parser->pos] < 32 || js[parser->pos] >= 127) {
   parser->pos = start;
   return JSMN_ERROR_INVAL;
  }
 }
found:
 token = jsmn_alloc_token(parser, tokens, num_tokens);
 if (token == ((void*)0)) {
  parser->pos = start;
  return JSMN_ERROR_NOMEM;
 }
 jsmn_fill_token(token, JSMN_PRIMITIVE, start, parser->pos);
 parser->pos--;
 return JSMN_SUCCESS;
}

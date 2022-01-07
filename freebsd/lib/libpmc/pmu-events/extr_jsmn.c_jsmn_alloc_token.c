
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int start; int end; scalar_t__ size; } ;
typedef TYPE_1__ jsmntok_t ;
struct TYPE_7__ {scalar_t__ toknext; } ;
typedef TYPE_2__ jsmn_parser ;



__attribute__((used)) static jsmntok_t *jsmn_alloc_token(jsmn_parser *parser,
       jsmntok_t *tokens, size_t num_tokens)
{
 jsmntok_t *tok;

 if ((unsigned)parser->toknext >= num_tokens)
  return ((void*)0);
 tok = &tokens[parser->toknext++];
 tok->start = tok->end = -1;
 tok->size = 0;
 return tok;
}

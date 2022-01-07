
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int size; } ;
typedef TYPE_1__ jsmntok_t ;
typedef int jsmn_parser ;


 scalar_t__ JSMN_ARRAY ;
 int JSMN_ERROR_PART ;
 scalar_t__ JSMN_PRIMITIVE ;
 scalar_t__ JSMN_STRING ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,TYPE_1__*,int) ;
 int strlen (char const*) ;

int test_partial_array() {
 int r;
 jsmn_parser p;
 jsmntok_t tok[10];
 const char *js;

 jsmn_init(&p);
 js = "  [ 1, true, ";
 r = jsmn_parse(&p, js, strlen(js), tok, 10);
 check(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
   && tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE);

 js = "  [ 1, true, [123, \"hello";
 r = jsmn_parse(&p, js, strlen(js), tok, 10);
 check(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
   && tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
   && tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE);

 js = "  [ 1, true, [123, \"hello\"]";
 r = jsmn_parse(&p, js, strlen(js), tok, 10);
 check(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
   && tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
   && tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE
   && tok[5].type == JSMN_STRING);

 check(tok[3].size == 2);

 js = "  [ 1, true, [123, \"hello\"]]";
 r = jsmn_parse(&p, js, strlen(js), tok, 10);
 check(r >= 0 && tok[0].type == JSMN_ARRAY
   && tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
   && tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE
   && tok[5].type == JSMN_STRING);
 check(tok[3].size == 2);
 check(tok[0].size == 3);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ jsmntok_t ;
typedef int jsmn_parser ;


 scalar_t__ JSMN_PRIMITIVE ;
 scalar_t__ JSMN_STRING ;
 int TOKEN_STRING (char const*,TYPE_1__,char*) ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,TYPE_1__*,int) ;
 int strlen (char const*) ;

int test_unquoted_keys() {

 int r;
 jsmn_parser p;
 jsmntok_t tok[10];
 const char *js;

 jsmn_init(&p);
 js = "key1: \"value\"\nkey2 : 123";

 r = jsmn_parse(&p, js, strlen(js), tok, 10);
 check(r >= 0 && tok[0].type == JSMN_PRIMITIVE
   && tok[1].type == JSMN_STRING && tok[2].type == JSMN_PRIMITIVE
   && tok[3].type == JSMN_PRIMITIVE);
 check(TOKEN_STRING(js, tok[0], "key1"));
 check(TOKEN_STRING(js, tok[1], "value"));
 check(TOKEN_STRING(js, tok[2], "key2"));
 check(TOKEN_STRING(js, tok[3], "123"));

 return 0;
}

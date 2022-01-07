
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmntok_t ;
typedef int jsmn_parser ;


 int TOKEN_STRING (char const*,int ,char*) ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int,int *,int) ;

int test_input_length() {
 const char *js;
 int r;
 jsmn_parser p;
 jsmntok_t tokens[10];

 js = "{\"a\": 0}garbage";

 jsmn_init(&p);
 r = jsmn_parse(&p, js, 8, tokens, 10);
 check(r == 3);
 check(TOKEN_STRING(js, tokens[0], "{\"a\": 0}"));
 check(TOKEN_STRING(js, tokens[1], "a"));
 check(TOKEN_STRING(js, tokens[2], "0"));

 return 0;
}

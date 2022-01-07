
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
 int strlen (char const*) ;

int test_nonstrict() {
 const char *js;
 int r;
 jsmn_parser p;
 jsmntok_t tokens[10];

 js = "a: 0garbage";

 jsmn_init(&p);
 r = jsmn_parse(&p, js, 4, tokens, 10);
 check(r == 2);
 check(TOKEN_STRING(js, tokens[0], "a"));
 check(TOKEN_STRING(js, tokens[1], "0"));

 js = "Day : 26\nMonth : Sep\n\nYear: 12";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == 6);
 return 0;
}

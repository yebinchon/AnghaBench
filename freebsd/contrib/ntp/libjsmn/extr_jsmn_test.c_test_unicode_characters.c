
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmntok_t ;
typedef int jsmn_parser ;


 int JSMN_ERROR_INVAL ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

int test_unicode_characters() {
 jsmn_parser p;
 jsmntok_t tokens[10];
 const char *js;

 int r;
 js = "{\"a\":\"\\uAbcD\"}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 js = "{\"a\":\"str\\u0000\"}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 js = "{\"a\":\"\\uFFFFstr\"}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 js = "{\"a\":\"str\\uFFGFstr\"}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\":\"str\\u@FfF\"}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\":[\"\\u028\"]}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\":[\"\\u0280\"]}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 return 0;
}

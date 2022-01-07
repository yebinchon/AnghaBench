
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

int test_objects_arrays() {
 int r;
 jsmn_parser p;
 jsmntok_t tokens[10];
 const char *js;

 js = "[10}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "[10]";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 js = "{\"a\": 1]";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\": 1}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 return 0;
}

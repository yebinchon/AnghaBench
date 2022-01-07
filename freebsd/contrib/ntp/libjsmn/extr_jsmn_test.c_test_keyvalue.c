
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef TYPE_1__ jsmntok_t ;
typedef int jsmn_parser ;


 int JSMN_ERROR_INVAL ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,TYPE_1__*,int) ;
 int strlen (char const*) ;

int test_keyvalue() {
 const char *js;
 int r;
 jsmn_parser p;
 jsmntok_t tokens[10];

 js = "{\"a\": 0, \"b\": \"c\"}";

 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == 5);
 check(tokens[0].size == 2);
 check(tokens[1].size == 1 && tokens[3].size == 1);
 check(tokens[2].size == 0 && tokens[4].size == 0);

 js = "{\"a\"\n0}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\", 0}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\": {2}}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);

 js = "{\"a\": {2: 3}}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);


 js = "{\"a\": {\"a\": 2 3}}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r == JSMN_ERROR_INVAL);
 return 0;
}

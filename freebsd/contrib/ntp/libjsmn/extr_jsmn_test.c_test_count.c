
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmn_parser ;


 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,int *,int ) ;
 int strlen (char const*) ;

int test_count() {
 jsmn_parser p;
 const char *js;

 js = "{}";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 1);

 js = "[]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 1);

 js = "[[]]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 2);

 js = "[[], []]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 3);

 js = "[[], []]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 3);

 js = "[[], [[]], [[], []]]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 7);

 js = "[\"a\", [[], []]]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 5);

 js = "[[], \"[], [[]]\", [[]]]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 5);

 js = "[1, 2, 3]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 4);

 js = "[1, 2, [3, \"a\"], null]";
 jsmn_init(&p);
 check(jsmn_parse(&p, js, strlen(js), ((void*)0), 0) == 7);

 return 0;
}

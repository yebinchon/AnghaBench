
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int start; int end; } ;
typedef TYPE_1__ jsmntok_t ;
typedef int jsmn_parser ;


 scalar_t__ JSMN_ARRAY ;
 scalar_t__ JSMN_OBJECT ;
 scalar_t__ JSMN_STRING ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,TYPE_1__*,int) ;
 int strlen (char const*) ;

int test_empty() {
 const char *js;
 int r;
 jsmn_parser p;
 jsmntok_t t[10];

 js = "{}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), t, 10);
 check(r >= 0);
 check(t[0].type == JSMN_OBJECT);
 check(t[0].start == 0 && t[0].end == 2);

 js = "[]";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), t, 10);
 check(r >= 0);
 check(t[0].type == JSMN_ARRAY);
 check(t[0].start == 0 && t[0].end == 2);

 js = "{\"a\":[]}";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), t, 10);
 check(r >= 0);
 check(t[0].type == JSMN_OBJECT && t[0].start == 0 && t[0].end == 8);
 check(t[1].type == JSMN_STRING && t[1].start == 2 && t[1].end == 3);
 check(t[2].type == JSMN_ARRAY && t[2].start == 5 && t[2].end == 7);

 js = "[{},{}]";
 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), t, 10);
 check(r >= 0);
 check(t[0].type == JSMN_ARRAY && t[0].start == 0 && t[0].end == 7);
 check(t[1].type == JSMN_OBJECT && t[1].start == 1 && t[1].end == 3);
 check(t[2].type == JSMN_OBJECT && t[2].start == 4 && t[2].end == 6);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int toksmall ;
typedef int toklarge ;
struct TYPE_6__ {scalar_t__ type; int size; } ;
typedef TYPE_1__ jsmntok_t ;
typedef int jsmn_parser ;


 scalar_t__ JSMN_ARRAY ;
 int JSMN_ERROR_NOMEM ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

int test_array_nomem() {
 int i;
 int r;
 jsmn_parser p;
 jsmntok_t toksmall[10], toklarge[10];
 const char *js;

 js = "  [ 1, true, [123, \"hello\"]]";

 for (i = 0; i < 6; i++) {
  jsmn_init(&p);
  memset(toksmall, 0, sizeof(toksmall));
  memset(toklarge, 0, sizeof(toklarge));
  r = jsmn_parse(&p, js, strlen(js), toksmall, i);
  check(r == JSMN_ERROR_NOMEM);

  memcpy(toklarge, toksmall, sizeof(toksmall));

  r = jsmn_parse(&p, js, strlen(js), toklarge, 10);
  check(r >= 0);

  check(toklarge[0].type == JSMN_ARRAY && toklarge[0].size == 3);
  check(toklarge[3].type == JSMN_ARRAY && toklarge[3].size == 2);
 }
 return 0;
}

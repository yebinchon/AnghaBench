
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmntok_t ;
typedef int jsmn_parser ;


 int JSMN_OBJECT ;
 int JSMN_PRIMITIVE ;
 int JSMN_STRING ;
 int TOKEN_EQ (int ,int,int,int ) ;
 int TOKEN_STRING (char const*,int ,char const*) ;
 int check (int) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

int test_simple() {
 const char *js;
 int r;
 jsmn_parser p;
 jsmntok_t tokens[10];

 js = "{\"a\": 0}";

 jsmn_init(&p);
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);
 check(TOKEN_EQ(tokens[0], 0, 8, JSMN_OBJECT));
 check(TOKEN_EQ(tokens[1], 2, 3, JSMN_STRING));
 check(TOKEN_EQ(tokens[2], 6, 7, JSMN_PRIMITIVE));

 check(TOKEN_STRING(js, tokens[0], js));
 check(TOKEN_STRING(js, tokens[1], "a"));
 check(TOKEN_STRING(js, tokens[2], "0"));

 jsmn_init(&p);
 js = "[\"a\":{},\"b\":{}]";
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 jsmn_init(&p);
 js = "{\n \"Day\": 26,\n \"Month\": 9,\n \"Year\": 12\n }";
 r = jsmn_parse(&p, js, strlen(js), tokens, 10);
 check(r >= 0);

 return 0;
}

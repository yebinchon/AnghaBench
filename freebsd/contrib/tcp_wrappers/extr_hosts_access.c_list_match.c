
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_info {int dummy; } ;


 int NO ;
 scalar_t__ STR_EQ (char*,char*) ;
 scalar_t__ STR_NE (char*,char*) ;
 int sep ;
 char* strtok (char*,int ) ;

__attribute__((used)) static int list_match(char *list, struct request_info *request,
    int (*match_fn)(char *, struct request_info *))
{
    char *tok;
    for (tok = strtok(list, sep); tok != 0; tok = strtok((char *) 0, sep)) {
 if (STR_EQ(tok, "EXCEPT"))
     return (NO);
 if (match_fn(tok, request)) {
     while ((tok = strtok((char *) 0, sep)) && STR_NE(tok, "EXCEPT"))
              ;
     return (tok == 0 || list_match((char *) 0, request, match_fn) == 0);
 }
    }
    return (NO);
}

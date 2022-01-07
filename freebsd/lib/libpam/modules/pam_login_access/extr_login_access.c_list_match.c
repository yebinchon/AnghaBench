
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO ;
 int sep ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strtok (char*,int ) ;
 int stub1 (char const*,char const*) ;

__attribute__((used)) static int
list_match(char *list, const char *item,
    int (*match_fn)(const char *, const char *))
{
    char *tok;
    int match = NO;
    for (tok = strtok(list, sep); tok != ((void*)0); tok = strtok((char *) 0, sep)) {
 if (strcasecmp(tok, "EXCEPT") == 0)
     break;
 if ((match = (*match_fn)(tok, item)) != 0)
     break;
    }


    if (match != NO) {
 while ((tok = strtok((char *) 0, sep)) && strcasecmp(tok, "EXCEPT"))
                 ;
 if (tok == ((void*)0) || list_match((char *) 0, item, match_fn) == NO)
     return (match);
    }
    return (NO);
}

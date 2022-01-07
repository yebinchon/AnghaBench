
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct login_info {int dummy; } ;


 int NO ;
 int sep ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strtok_r (char*,int ,char**) ;
 int stub1 (char*,struct login_info*) ;

__attribute__((used)) static int
list_match(char *list,
    struct login_info *item,
    int (*match_fn)(char *, struct login_info *))
{
    char *tok;
    int match = NO;
    char *foo = ((void*)0);
    for (tok = strtok_r(list, sep, &foo);
  tok != ((void*)0);
  tok = strtok_r(((void*)0), sep, &foo)) {
 if (strcasecmp(tok, "EXCEPT") == 0)
     break;
 if ((match = (*match_fn) (tok, item)) != 0)
     break;
    }


    if (match != NO) {
 while ((tok = strtok_r(((void*)0), sep, &foo)) && strcasecmp(tok, "EXCEPT"))
                 ;
 if (tok == 0 || list_match(((void*)0), item, match_fn) == NO)
     return (match);
    }
    return (NO);
}

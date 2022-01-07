
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {scalar_t__* gr_mem; } ;


 int NO ;
 int YES ;
 struct group* getgrnam (char const*) ;
 int netgroup_match (char const*,char*,char const*) ;
 scalar_t__ strcasecmp (char const*,scalar_t__) ;
 scalar_t__ string_match (char const*,char const*) ;

__attribute__((used)) static int
user_match(const char *tok, const char *string)
{
    struct group *group;
    int i;







    if (tok[0] == '@') {
 return (netgroup_match(tok + 1, (char *) 0, string));
    } else if (string_match(tok, string)) {
 return (YES);
    } else if ((group = getgrnam(tok)) != ((void*)0)) {
 for (i = 0; group->gr_mem[i]; i++)
     if (strcasecmp(string, group->gr_mem[i]) == 0)
  return (YES);
    }
    return (NO);
}

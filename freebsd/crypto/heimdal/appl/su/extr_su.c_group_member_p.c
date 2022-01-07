
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int ** gr_mem; } ;


 int GROUP_EMPTY ;
 int GROUP_MEMBER ;
 int GROUP_MISSING ;
 int GROUP_NOT_MEMBER ;
 struct group* getgrnam (char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
group_member_p(const char *group, const char *user)
{
    struct group *g;
    int i;
    g = getgrnam(group);
    if(g == ((void*)0))
 return GROUP_MISSING;
    if(g->gr_mem[0] == ((void*)0))
 return GROUP_EMPTY;
    for(i = 0; g->gr_mem[i] != ((void*)0); i++)
 if(strcmp(user, g->gr_mem[i]) == 0)
     return GROUP_MEMBER;
    return GROUP_NOT_MEMBER;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_NONE ;
 int ** keyword ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
findtoken(char *ptr)
{
    int i;

    if (ptr == ((void*)0) || *ptr == '\0')
 return T_NONE;

    for (i = 0; keyword[i] != ((void*)0); i++)
 if (strcmp(keyword[i], ptr) == 0)
     return i;

    return T_NONE;
}

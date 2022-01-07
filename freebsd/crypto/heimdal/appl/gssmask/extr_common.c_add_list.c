
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** ecalloc (size_t,int) ;
 char*** erealloc (char***,int) ;

__attribute__((used)) static void
add_list(char ****list, size_t *listlen, char **str, size_t len)
{
    size_t i;
    *list = erealloc(*list, sizeof(**list) * (*listlen + 1));

    (*list)[*listlen] = ecalloc(len, sizeof(**list));
    for (i = 0; i < len; i++)
 (*list)[*listlen][i] = str[i];
    (*listlen)++;
}

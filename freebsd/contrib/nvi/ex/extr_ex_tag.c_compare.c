
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EQUAL ;
 int GREATER ;
 int LESS ;

__attribute__((used)) static int
compare(char *s1, char *s2, char *back)
{
 for (; *s1 && s2 < back && (*s2 != '\t' && *s2 != ' '); ++s1, ++s2)
  if (*s1 != *s2)
   return (*s1 < *s2 ? LESS : GREATER);
 return (*s1 ? GREATER : s2 < back &&
     (*s2 != '\t' && *s2 != ' ') ? LESS : EQUAL);
}

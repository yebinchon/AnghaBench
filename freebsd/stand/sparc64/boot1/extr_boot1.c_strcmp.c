
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
strcmp(const char *s1, const char *s2)
{

 for (; *s1 == *s2 && *s1; s1++, s2++)
  ;
 return ((u_char)*s1 - (u_char)*s2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
skip_space(char **cpp)
{
 char *cp;

 for (cp = *cpp; *cp == ' ' || *cp == '\t'; cp++)
  ;
 *cpp = cp;
}

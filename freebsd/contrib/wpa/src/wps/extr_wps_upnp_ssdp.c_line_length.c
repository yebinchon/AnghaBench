
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int line_length(const char *l)
{
 const char *lp = l;
 while (*lp && *lp != '\n')
  lp++;
 if (*lp == '\n')
  lp++;
 return lp - l;
}

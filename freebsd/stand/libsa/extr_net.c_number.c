
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n_long ;


 scalar_t__ isdigit (char) ;

__attribute__((used)) static char *
number(char *s, n_long *n)
{
 for (*n = 0; isdigit(*s); s++)
  *n = (*n * 10) + *s - '0';
 return s;
}

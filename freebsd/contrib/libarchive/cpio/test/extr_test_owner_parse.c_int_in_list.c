
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failure (char*,int) ;

__attribute__((used)) static int
int_in_list(int i, const int *l, size_t n)
{
 while (n-- > 0)
  if (*l++ == i)
   return (1);
 failure("%d", i);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resolvone (int) ;

__attribute__((used)) static void *
resolvloop(void *p)
{
 int *nhosts = (int *)p;
 if (*nhosts == 0)
  return ((void*)0);
 do
  resolvone(*nhosts);
 while (--(*nhosts));
 return ((void*)0);
}

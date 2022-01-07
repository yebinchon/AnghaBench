
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getuid () ;
 scalar_t__ opielock (char*) ;

int testlock()
{
  int i;

  if (getuid())
    return -2;

  for (i = 0; i < 3; i++)
    if (opielock("__opietest"))
      return -1;

  return 0;
}

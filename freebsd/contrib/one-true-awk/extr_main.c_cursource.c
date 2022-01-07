
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t curpfile ;
 scalar_t__ npfile ;
 char** pfile ;

char *cursource(void)
{
 if (npfile > 0)
  return pfile[curpfile];
 else
  return ((void*)0);
}

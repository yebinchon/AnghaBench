
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
group_mem_compare(char **mem0, char **mem1)
{
 int i0, i1;

 if (mem0 == ((void*)0) && mem1 == ((void*)0))
  return (1);
 if (mem0 == ((void*)0) || mem1 == ((void*)0))
  return (0);

 for (i0 = 0; mem0[i0] != ((void*)0); i0++) {
  for (i1 = 0; mem1[i1] != ((void*)0); i1++) {
   if (strcmp(mem0[i0], mem1[i1]) == 0)
    break;
  }
  if (mem1[i1] == ((void*)0))
   return (0);
 }

 return (1);
}

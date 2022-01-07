
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static bool
hostent_addr_list_compare(char **addr_list0, char **addr_list1, int length)
{
 int i0, i1;

 if (addr_list0 == ((void*)0) && addr_list1 == ((void*)0))
  return (1);
 if (addr_list0 == ((void*)0) || addr_list1 == ((void*)0))
  return (0);

 for (i0 = 0; addr_list0[i0] != ((void*)0); i0++) {
  for (i1 = 0; addr_list1[i1] != ((void*)0); i1++) {
   if (memcmp(addr_list0[i0], addr_list1[i1], length) == 0)
    break;
  }
  if (addr_list1[i1] == ((void*)0))
   return (0);
 }

 return (1);
}

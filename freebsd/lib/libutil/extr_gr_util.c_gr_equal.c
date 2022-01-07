
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {scalar_t__ gr_gid; int ** gr_mem; int * gr_passwd; int * gr_name; } ;


 scalar_t__ strcmp (int *,int *) ;

int
gr_equal(const struct group *gr1, const struct group *gr2)
{


 if (gr1->gr_name == ((void*)0) || gr2->gr_name == ((void*)0)) {
  if (gr1->gr_name != gr2->gr_name)
   return (0);
 } else if (strcmp(gr1->gr_name, gr2->gr_name) != 0)
  return (0);
 if (gr1->gr_passwd == ((void*)0) || gr2->gr_passwd == ((void*)0)) {
  if (gr1->gr_passwd != gr2->gr_passwd)
   return (0);
 } else if (strcmp(gr1->gr_passwd, gr2->gr_passwd) != 0)
  return (0);
 if (gr1->gr_gid != gr2->gr_gid)
  return (0);







 if (gr1->gr_mem != ((void*)0) && gr2->gr_mem != ((void*)0)) {
  int i;

  for (i = 0;
      gr1->gr_mem[i] != ((void*)0) && gr2->gr_mem[i] != ((void*)0); i++) {
   if (strcmp(gr1->gr_mem[i], gr2->gr_mem[i]) != 0)
    return (0);
  }
  if (gr1->gr_mem[i] != ((void*)0) || gr2->gr_mem[i] != ((void*)0))
   return (0);
 } else if (gr1->gr_mem != ((void*)0) && gr1->gr_mem[0] != ((void*)0)) {
  return (0);
 } else if (gr2->gr_mem != ((void*)0) && gr2->gr_mem[0] != ((void*)0)) {
  return (0);
 }

 return (1);
}

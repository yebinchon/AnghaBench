
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {scalar_t__ gr_gid; int gr_mem; int * gr_passwd; int * gr_name; } ;


 int group_mem_compare (int ,int ) ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static bool
group_compare(const struct group *grp0, const struct group *grp1)
{

 if (grp0 == ((void*)0) && grp1 == ((void*)0))
  return (1);
 if (grp0 == ((void*)0) || grp1 == ((void*)0))
  return (0);

 if (strcmp(grp0->gr_name, grp1->gr_name) != 0)
  return (0);

 if (grp0->gr_passwd != ((void*)0) || grp1->gr_passwd != ((void*)0)) {
  if (grp0->gr_passwd == ((void*)0) || grp1->gr_passwd == ((void*)0))
   return (0);
  if (strcmp(grp0->gr_passwd, grp1->gr_passwd) != 0)
   return (0);
 }

 if (grp0->gr_gid != grp1->gr_gid)
  return (0);

 if (!group_mem_compare(grp0->gr_mem, grp1->gr_mem))
  return (0);

 return (1);
}

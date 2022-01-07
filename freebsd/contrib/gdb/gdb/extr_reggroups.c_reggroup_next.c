
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroups {struct reggroup_el* first; } ;
struct reggroup_el {struct reggroup* group; struct reggroup_el* next; } ;
struct reggroup {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct reggroups default_groups ;
 int gdb_assert (int ) ;
 struct reggroups* gdbarch_data (struct gdbarch*,int ) ;
 int reggroups_data ;

struct reggroup *
reggroup_next (struct gdbarch *gdbarch, struct reggroup *last)
{
  struct reggroups *groups;
  struct reggroup_el *el;



  groups = gdbarch_data (gdbarch, reggroups_data);
  gdb_assert (groups != ((void*)0));
  if (groups->first == ((void*)0))
    groups = &default_groups;


  if (last == ((void*)0))
    return groups->first->group;
  for (el = groups->first; el != ((void*)0); el = el->next)
    {
      if (el->group == last)
 {
   if (el->next != ((void*)0))
     return el->next->group;
   else
     return ((void*)0);
 }
    }
  return ((void*)0);
}

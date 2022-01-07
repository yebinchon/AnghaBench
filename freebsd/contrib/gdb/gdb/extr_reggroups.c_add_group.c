
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroups {struct reggroup_el** last; } ;
struct reggroup_el {struct reggroup_el* next; struct reggroup* group; } ;
struct reggroup {int dummy; } ;


 int gdb_assert (int ) ;

__attribute__((used)) static void
add_group (struct reggroups *groups, struct reggroup *group,
    struct reggroup_el *el)
{
  gdb_assert (group != ((void*)0));
  el->group = group;
  el->next = ((void*)0);
  (*groups->last) = el;
  groups->last = &el->next;
}
